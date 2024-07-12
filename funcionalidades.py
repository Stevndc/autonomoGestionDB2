import mysql.connector


conexion = mysql.connector.connect(
    host='localhost',
    user='root',
    password='12345'
)

HOST = 'localhost'


def añadirUsuario():
    try:
        usuario = input("Ingresa el nombre del usuario: ")
        contraseña = input("Ingresa la contraseña: ")
        cursor = conexion.cursor()
        sentencia = f"CREATE USER '{usuario}'@'{HOST}' IDENTIFIED BY '{contraseña}'"
        cursor.execute(sentencia)

        conexion.commit()
        print("Usuario añadido correctamente.")
    
    except mysql.connector.Error as error:
        print("Error al añadir usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")



def actualizarUsuario():
    try:
        usuario = input("Ingresa el nombre del usuario que quiere actualizar: ")
        nuevoUsuario = input("Ingresa el nuevo nombre del usuario: ")
        contraseña = input("Ingresa la nueva contraseña: ")
        cursor = conexion.cursor()
        
        sentencia = f"RENAME USER '{usuario}'@'{HOST}' TO '{nuevoUsuario}'@'{HOST}'"
        cursor.execute(sentencia)
        conexion.commit()
        
        sentencia2 = f"ALTER USER '{nuevoUsuario}'@'{HOST}' IDENTIFIED BY '{contraseña}'"
        cursor.execute(sentencia2)
        conexion.commit()
        
        print("Usuario actualizado correctamente.")
    
    except mysql.connector.Error as error:
        print("Error al actualizar usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")


def eliminarUsuario():
    try: 
        usuario = input("Ingresa el nombre del usuario a ser eliminado: ")
        cursor = conexion.cursor()
        sentencia = f"DROP USER '{usuario}'@'{HOST}'"
        cursor.execute(sentencia)
        
        conexion.commit()
        print("Usuario eliminado correctamente.")
    
    except mysql.connector.Error as error:
        print("Error al eliminar usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")


def obtenerUsuarios():
    try:
        cursor = conexion.cursor()
        sentencia = f"SELECT * FROM mysql.user"
        cursor.execute(sentencia)
        resultados = cursor.fetchall()

        for fila in resultados:
            print(fila)
        print("Presione enter para continuar")
        input()

    
    except mysql.connector.Error as error:
        print("Error al agregar usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")



def obtenerRoles():
    try:
        cursor = conexion.cursor()
        sentencia = f"""SELECT COLUMN_NAME
                    FROM information_schema.COLUMNS
                    WHERE TABLE_NAME = 'user' 
                    AND TABLE_SCHEMA = 'mysql' 
                    AND COLUMN_TYPE LIKE "enum('N','Y')"
                    AND IS_NULLABLE = 'NO'"""

        cursor.execute(sentencia)
        resultados = cursor.fetchall()

        for fila in resultados:
            print(fila)
        print("Presione enter para continuar")
        input()
    
    except mysql.connector.Error as error:
        print("Error al agregar usuario:", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")


def procedimientosAlmacenados():
    conexion = mysql.connector.connect(
        host='localhost',
        user='root',
        password='12345',
        database='bomberos_db'
    )
    try:
        cursor = conexion.cursor()
        cursor.execute("SHOW TABLES FROM bomberos_db")
        tablas = cursor.fetchall()

        with open('procedimientoAlmacenado.sql', 'w') as archivo:
            archivo.write(f"DELIMITER $$\n\n")
            
            for tabla in tablas:
                nombre_tabla = tabla[0]
                cursor.execute(f"DESCRIBE {nombre_tabla}")
                columnas = cursor.fetchall()
                
                primary_key = None
                columnas_nombres = []
                columnas_parametros = []
                columnas_update = []
                
                for columna in columnas:
                    col_name = columna[0]
                    col_type = columna[1]
                    if columna[3] == 'PRI' and columna[5] == 'auto_increment':
                        primary_key = col_name
                    else:
                        columnas_nombres.append(col_name)
                        columnas_parametros.append(f"IN p_{col_name} {col_type}")
                        columnas_update.append(f"{col_name} = p_{col_name}")

                columnas_insert = ", ".join(columnas_nombres)
                columnas_parametros = ", ".join(columnas_parametros)
                
                archivo.write(f"CREATE PROCEDURE Insertar_{nombre_tabla} ({columnas_parametros}) \n")
                archivo.write(f"BEGIN\n")
                archivo.write(f"    INSERT INTO {nombre_tabla} ({columnas_insert}) VALUES ({', '.join([f'p_{col}' for col in columnas_nombres])});\n")
                archivo.write(f"END $$\n\n")
                
                if primary_key:
                    archivo.write(f"CREATE PROCEDURE Actualizar_{nombre_tabla} (IN p_{primary_key} {columnas[0][1]}, {columnas_parametros}) \n")
                    archivo.write(f"BEGIN\n")
                    archivo.write(f"    UPDATE {nombre_tabla} SET {', '.join(columnas_update)} WHERE {primary_key} = p_{primary_key};\n")
                    archivo.write(f"END $$\n\n")
                
                if primary_key:
                    archivo.write(f"CREATE PROCEDURE Eliminar_{nombre_tabla} (IN p_{primary_key} {columnas[0][1]}) \n")
                    archivo.write(f"BEGIN\n")
                    archivo.write(f"    DELETE FROM {nombre_tabla} WHERE {primary_key} = p_{primary_key};\n")
                    archivo.write(f"END $$\n\n")
                
                archivo.write(f"CREATE PROCEDURE ObtenerTodos_{nombre_tabla} () \n")
                archivo.write(f"BEGIN\n")
                archivo.write(f"    SELECT * FROM {nombre_tabla};\n")
                archivo.write(f"END $$\n\n")
            
            archivo.write(f"DELIMITER ;\n")
    
        print("Scripts de procedimientos almacenados generados satisfactoriamente.")
    
    except mysql.connector.Error as error:
        print("Error al generar script: ", error)

    finally:
        cursor.close()
        print("Cursor cerrado.")
        print("Presione enter para regresar al menú..")
        input()
        


def generacionDisparadores():
    conexion = mysql.connector.connect(
        host='localhost',
        user='root',
        password='12345',
        database='bomberos_db'
    )
    try:
        conexion._open_connection()
        operador = conexion.cursor()
        
        operador2 = conexion.cursor()
        operador2.execute("""SELECT 
                                TABLE_NAME AS 'Tabla',
                                COLUMN_NAME AS 'Columna'
                            FROM
                                INFORMATION_SCHEMA.COLUMNS
                            WHERE
                                TABLE_SCHEMA = 'bomberos_db'
                            ORDER BY TABLE_NAME, ORDINAL_POSITION;""")
        columnas = operador2.fetchall()
        for columna in columnas:
            print(columna)
        print("Presione enter para continuar")
        input()


        operador.execute("SHOW TABLES FROM bomberos_db")
        tablas = operador.fetchall()
        


        with open('triggers.sql', 'w') as archivo:
            archivo.write("DELIMITER $$\n\n")
            
            for tabla in tablas:
                nombre_tabla = tabla[0]
                
                
                if nombre_tabla.lower() == 'auditoria':
                    continue
                
                # Trigger para INSERT
                archivo.write(f"CREATE TRIGGER trg_insert_{nombre_tabla} AFTER INSERT ON {nombre_tabla} \n")
                archivo.write(f"FOR EACH ROW \n")
                archivo.write(f"BEGIN \n")
                archivo.write(f"    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) \n")
                archivo.write(f"    VALUES ('{nombre_tabla}', CURRENT_USER(), 'Insertado registro en {nombre_tabla}'); \n")
                archivo.write(f"END $$\n\n")
                
                # Trigger para UPDATE
                archivo.write(f"CREATE TRIGGER trg_update_{nombre_tabla} AFTER UPDATE ON {nombre_tabla} \n")
                archivo.write(f"FOR EACH ROW \n")
                archivo.write(f"BEGIN \n")
                archivo.write(f"    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) \n")
                archivo.write(f"    VALUES ('{nombre_tabla}', CURRENT_USER(), 'Actualizado registro en {nombre_tabla}'); \n")
                archivo.write(f"END $$\n\n")
                
                # Trigger para DELETE
                archivo.write(f"CREATE TRIGGER trg_delete_{nombre_tabla} AFTER DELETE ON {nombre_tabla} \n")
                archivo.write(f"FOR EACH ROW \n")
                archivo.write(f"BEGIN \n")
                archivo.write(f"    INSERT INTO auditoria (Nombre_de_la_tabla, Usuario_actual, Detalle_de_la_accion) \n")
                archivo.write(f"    VALUES ('{nombre_tabla}', CURRENT_USER(), 'Eliminado registro en {nombre_tabla}'); \n")
                archivo.write(f"END $$\n\n")
                
            archivo.write("DELIMITER ;\n")
        
        print("Los disparadores fueron creados satisfactoriamente. Presione enter para continuar")
        input()
    
    except mysql.connector.Error as error:
        print("Error al generar script: ", error)
    
    finally:
        if conexion.is_connected():
            operador.close()
            conexion.close()
            print("Conexión cerrada.")



def ejecutarProcedimiento():
    conexion = mysql.connector.connect(
        host='localhost',
        user='root',
        password='12345',
        database='bomberos_db'
    )
    try:
        conexion._open_connection()
        incidencia = input("Ingresa el id de la incidencia: ")
        vehiculo = input("Ingresa el id del vehiculo: ")
        
        cursor = conexion.cursor()
        cursor.callproc('CrearYAsignarSalidaEmergencia', (
            incidencia,  
            vehiculo,  
            '2024-07-11',  
            '2024-07-11 08:00:00',  
            '2024-07-11 12:00:00',  
        ))

        conexion.commit()
        for result in cursor.stored_results():
            print(result.fetchall())

        print("Proceso ejecutado correctamente. Presione enter para continuar")
        input()
    
    except mysql.connector.Error as error:
        print("Error al ejecutar el proceso.", error)

    finally:
        if conexion.is_connected():
            cursor.close()
            conexion.close()
            print("Conexión cerrada.")



def cerrarMenu():
    print(conexion.is_connected())
    if conexion.is_connected():
        conexion.close()
        print("Conexión cerrada.")
        print("Hasta luego.")
    else: 
        print("Saliendo del gestor.")
        
        
        
        
        
