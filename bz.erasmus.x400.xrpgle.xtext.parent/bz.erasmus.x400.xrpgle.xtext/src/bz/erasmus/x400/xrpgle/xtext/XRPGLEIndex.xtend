package bz.erasmus.x400.xrpgle.xtext

import org.eclipse.emf.ecore.EObject
import bz.erasmus.x400.xrpgle.xtext.xRPGLE.XRPGLEPackage
import org.eclipse.xtext.resource.impl.ResourceDescriptionsProvider
import com.google.inject.Inject

class XRPGLEIndex {

	@Inject ResourceDescriptionsProvider rdp

	def getResourceDescription(EObject o) {
		val index = rdp.getResourceDescriptions(o.eResource)
		index.getResourceDescription(o.eResource.URI)
	}

	def getExportedEObjectDescriptions(EObject o) {
		o.getResourceDescription.getExportedObjects
	}

	def getExportedClassesEObjectDescriptions(EObject o) {
//		var a = o.getResourceDescription
//		var b = a.getExportedObjectsByObject(XRPGLEPackage.eINSTANCE.dataStructure)
//		var c = a.getExportedObjectsByType(XRPGLEPackage.eINSTANCE.dataStructure)
		
		o.getResourceDescription.getExportedObjectsByType(XRPGLEPackage.eINSTANCE.dataStructure)
	}
}
