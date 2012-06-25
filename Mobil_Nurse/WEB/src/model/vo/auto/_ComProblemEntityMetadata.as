
/**
 * This is a generated class and is not intended for modification.  
 */
package model.vo.auto
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ComProblemEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("problemsPencil", "speak", "toolsPencil", "problemsSee", "solutionSpeak", "solutionPencil", "pencil", "hand", "id", "solutionsSee", "toolsSee", "toolsEar", "problemsEar", "ear", "see", "problemsHand", "toolsHand", "toolsSpeak", "problemsSpeak", "solutionHand", "solutionEar");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("problemsPencil", "speak", "toolsPencil", "problemsSee", "solutionSpeak", "solutionPencil", "pencil", "hand", "id", "solutionsSee", "toolsSee", "toolsEar", "problemsEar", "ear", "see", "problemsHand", "toolsHand", "toolsSpeak", "problemsSpeak", "solutionHand", "solutionEar");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("problemsPencil", "speak", "toolsPencil", "problemsSee", "solutionSpeak", "solutionPencil", "pencil", "hand", "id", "solutionsSee", "toolsSee", "toolsEar", "problemsEar", "ear", "see", "problemsHand", "toolsHand", "toolsSpeak", "problemsSpeak", "solutionHand", "solutionEar");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("problemsPencil", "speak", "toolsPencil", "problemsSee", "solutionSpeak", "solutionPencil", "pencil", "hand", "id", "solutionsSee", "toolsSee", "toolsEar", "problemsEar", "ear", "see", "problemsHand", "toolsHand", "toolsSpeak", "problemsSpeak", "solutionHand", "solutionEar");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ComProblem";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_ComProblem;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ComProblemEntityMetadata(value : _Super_ComProblem)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["problemsPencil"] = new Array();
            model_internal::dependentsOnMap["speak"] = new Array();
            model_internal::dependentsOnMap["toolsPencil"] = new Array();
            model_internal::dependentsOnMap["problemsSee"] = new Array();
            model_internal::dependentsOnMap["solutionSpeak"] = new Array();
            model_internal::dependentsOnMap["solutionPencil"] = new Array();
            model_internal::dependentsOnMap["pencil"] = new Array();
            model_internal::dependentsOnMap["hand"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["solutionsSee"] = new Array();
            model_internal::dependentsOnMap["toolsSee"] = new Array();
            model_internal::dependentsOnMap["toolsEar"] = new Array();
            model_internal::dependentsOnMap["problemsEar"] = new Array();
            model_internal::dependentsOnMap["ear"] = new Array();
            model_internal::dependentsOnMap["see"] = new Array();
            model_internal::dependentsOnMap["problemsHand"] = new Array();
            model_internal::dependentsOnMap["toolsHand"] = new Array();
            model_internal::dependentsOnMap["toolsSpeak"] = new Array();
            model_internal::dependentsOnMap["problemsSpeak"] = new Array();
            model_internal::dependentsOnMap["solutionHand"] = new Array();
            model_internal::dependentsOnMap["solutionEar"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["problemsPencil"] = "String";
        model_internal::propertyTypeMap["speak"] = "Boolean";
        model_internal::propertyTypeMap["toolsPencil"] = "String";
        model_internal::propertyTypeMap["problemsSee"] = "String";
        model_internal::propertyTypeMap["solutionSpeak"] = "String";
        model_internal::propertyTypeMap["solutionPencil"] = "String";
        model_internal::propertyTypeMap["pencil"] = "Boolean";
        model_internal::propertyTypeMap["hand"] = "Boolean";
        model_internal::propertyTypeMap["id"] = "Number";
        model_internal::propertyTypeMap["solutionsSee"] = "String";
        model_internal::propertyTypeMap["toolsSee"] = "String";
        model_internal::propertyTypeMap["toolsEar"] = "String";
        model_internal::propertyTypeMap["problemsEar"] = "String";
        model_internal::propertyTypeMap["ear"] = "Boolean";
        model_internal::propertyTypeMap["see"] = "Boolean";
        model_internal::propertyTypeMap["problemsHand"] = "String";
        model_internal::propertyTypeMap["toolsHand"] = "String";
        model_internal::propertyTypeMap["toolsSpeak"] = "String";
        model_internal::propertyTypeMap["problemsSpeak"] = "String";
        model_internal::propertyTypeMap["solutionHand"] = "String";
        model_internal::propertyTypeMap["solutionEar"] = "String";

        model_internal::_instance = value;
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity ComProblem");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity ComProblem");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of ComProblem");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ComProblem");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity ComProblem");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity ComProblem");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isProblemsPencilAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSpeakAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isToolsPencilAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProblemsSeeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSolutionSpeakAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSolutionPencilAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPencilAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHandAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSolutionsSeeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isToolsSeeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isToolsEarAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProblemsEarAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEarAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSeeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProblemsHandAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isToolsHandAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isToolsSpeakAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProblemsSpeakAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSolutionHandAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSolutionEarAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get problemsPencilStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get speakStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get toolsPencilStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get problemsSeeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get solutionSpeakStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get solutionPencilStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get pencilStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get handStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get solutionsSeeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get toolsSeeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get toolsEarStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get problemsEarStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get earStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get seeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get problemsHandStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get toolsHandStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get toolsSpeakStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get problemsSpeakStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get solutionHandStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get solutionEarStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
