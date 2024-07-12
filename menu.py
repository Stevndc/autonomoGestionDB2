import funcionalidades
import restauracion
import reporte

def menu_gestor():
    print("\nGestor de funcionalidades - bomberos_db")
    print("1. Añadir usuario")
    print("2. Actualizar usuario")
    print("3. Eliminar usuario")
    print("4. Añadir rol")
    print("5. Asignar rol a usuario")
    print("6. Obtener usuarios")
    print("7. Obetener roles")
    print("8. Respaldar base de datos")
    print("9. Restaurar base de datos")
    print("10. Generar reporte")
    print("11. Generar procedimientos almacenados")
    print("12. Generar disparadores")
    print("13. Ejecuctar Procedimiento de varias entidades")


    print("14. Salir")

def main():
    while True:
        menu_gestor()
        opcion = input("Selecciona una opción: ")

        if opcion == '1':
            funcionalidades.añadirUsuario()
        elif opcion == '2':
            funcionalidades.actualizarUsuario()
        elif opcion == '3':
            funcionalidades.eliminarUsuario()
        elif opcion == '4':
            print("4")
        elif opcion == '5':
            print("5")
        elif opcion == '6':
            funcionalidades.obtenerUsuarios()
        elif opcion == '7':
            funcionalidades.obtenerRoles()
        elif opcion == '8':
            restauracion.respaldo()
        elif opcion == '9':
            restauracion.restaurar()
        elif opcion == '10':
            reporte.ejecutar()
        elif opcion == '11':
            funcionalidades.procedimientosAlmacenados()
        elif opcion == '12':
            funcionalidades.generacionDisparadores()
        elif opcion == '13':
            funcionalidades.ejecutarProcedimiento()
        elif opcion == '14':
            funcionalidades.cerrarMenu()
            break
        else:
            print("Opción inválida. Intente nuevamente.")

if __name__ == "__main__":
    main()
