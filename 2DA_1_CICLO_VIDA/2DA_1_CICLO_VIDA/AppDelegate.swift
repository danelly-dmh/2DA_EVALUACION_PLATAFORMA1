//
//  AppDelegate.swift
//  2DA_1_CICLO_VIDA
// <Ciclo de vida> - <Nos muestra el ciclo de vida de la aplicación>
// written by: Danelly Montañez Hernández
// Instituto Tecnológico de Chihuahua II-13550406
// DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES PLATAFORMA I
// 07/03/17
// Copyright © 2017 comdanelly. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	//La propiedad de la instancia es un objeto ventana, en caso de que no tenga ninguno el valor es nil.
    var window: UIWindow?
	//Indica al delegate que el proceso de lanzamiento casi termina y que la aplicación está casi lista para ejecutarse.
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    //funcion applicationWillResignActive
    // Se envía cuando la aplicación pasará a estado inactivo, puede ser durante una llamada o cuando el usuario la pasa a segundo plano.
    // Este método se utiliza para pausar actividades en ejecución, se puede utilizar en los juegos para pausarlos.
    func applicationWillResignActive(application: UIApplication) {
        print("WillResignActive")
    }
    //Funcion applicationDidEnterBackground
	Este método se usa para liberar recursos compartidos, guardar datos de usuario, invalidar temporizadores y almacenar suficiente información de estado de aplicación para restaurarla a su estado actual en caso de que se termine posteriormente.
	//Si la app soporta ejecución en segundo plano este metodo se llama en lugar de applicationWillTerminate: cuando el usuario la quita
    func applicationDidEnterBackground(application: UIApplication) {
		print("DidEnterBackground")
    }
	//funcion applicationDidEnterBackground
	//Es llamado como parte de una transición del segundo plano al estado inactivo.
	//Aquí puede deshacer muchos cambios hechos sobre el segundo plano.
    func applicationWillEnterForeground(application: UIApplication) {
        print("WillEnterForeground")
    }
	//Funcion applicationDidBecomeActive
	//Esta función reinicia cualquier tarea que esté pausada o aun no iniciada mientras la app estuvo inactiva. Si la app estaba antes en segundo plano, brinda la opción de reiniciar la interfaz.
    func applicationDidBecomeActive(application: UIApplication) {
        print("DidBecomeActive")
    }
	//Función applicationWillTerminate
	//Se llama cuando la aplicación está a punto de terminar. Guarda datos si es necesario.
    func applicationWillTerminate(application: UIApplication) {
        print("WillTerminate")
    }
}

