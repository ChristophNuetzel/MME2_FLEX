/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Patient.as.
 */

package model.vo.auto
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import flash.utils.ByteArray;
import model.vo.auto.Communication;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Patient extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("mobile.nurse.model.patient.Patient") == null)
            {
                flash.net.registerClassAlias("mobile.nurse.model.patient.Patient", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("mobile.nurse.model.patient.Patient", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        model.vo.auto.Communication.initRemoteClassAliasSingleChild();
        model.vo.auto.ComProblem.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _PatientEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_birth : String;
    private var _internal_communication : model.vo.auto.Communication;
    private var _internal_firstname : String;
    private var _internal_roomNr : String;
    private var _internal_nation : String;
    private var _internal_picture : ByteArray;
    private var _internal_id : Number;
    private var _internal_religion : String;
    private var _internal_history : String;
    private var _internal_patNr : String;
    private var _internal_name : String;
    private var _internal_age : int;
    private var _internal_gender : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Patient()
    {
        _model = new _PatientEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get birth() : String
    {
        return _internal_birth;
    }

    [Bindable(event="propertyChange")]
    public function get communication() : model.vo.auto.Communication
    {
        return _internal_communication;
    }

    [Bindable(event="propertyChange")]
    public function get firstname() : String
    {
        return _internal_firstname;
    }

    [Bindable(event="propertyChange")]
    public function get roomNr() : String
    {
        return _internal_roomNr;
    }

    [Bindable(event="propertyChange")]
    public function get nation() : String
    {
        return _internal_nation;
    }

    [Bindable(event="propertyChange")]
    public function get picture() : ByteArray
    {
        return _internal_picture;
    }

    [Bindable(event="propertyChange")]
    public function get id() : Number
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get religion() : String
    {
        return _internal_religion;
    }

    [Bindable(event="propertyChange")]
    public function get history() : String
    {
        return _internal_history;
    }

    [Bindable(event="propertyChange")]
    public function get patNr() : String
    {
        return _internal_patNr;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get age() : int
    {
        return _internal_age;
    }

    [Bindable(event="propertyChange")]
    public function get gender() : String
    {
        return _internal_gender;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set birth(value:String) : void
    {
        var oldValue:String = _internal_birth;
        if (oldValue !== value)
        {
            _internal_birth = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "birth", oldValue, _internal_birth));
        }
    }

    public function set communication(value:model.vo.auto.Communication) : void
    {
        var oldValue:model.vo.auto.Communication = _internal_communication;
        if (oldValue !== value)
        {
            _internal_communication = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "communication", oldValue, _internal_communication));
        }
    }

    public function set firstname(value:String) : void
    {
        var oldValue:String = _internal_firstname;
        if (oldValue !== value)
        {
            _internal_firstname = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "firstname", oldValue, _internal_firstname));
        }
    }

    public function set roomNr(value:String) : void
    {
        var oldValue:String = _internal_roomNr;
        if (oldValue !== value)
        {
            _internal_roomNr = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "roomNr", oldValue, _internal_roomNr));
        }
    }

    public function set nation(value:String) : void
    {
        var oldValue:String = _internal_nation;
        if (oldValue !== value)
        {
            _internal_nation = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nation", oldValue, _internal_nation));
        }
    }

    public function set picture(value:ByteArray) : void
    {
        var oldValue:ByteArray = _internal_picture;
        if (oldValue !== value)
        {
            _internal_picture = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "picture", oldValue, _internal_picture));
        }
    }

    public function set id(value:Number) : void
    {
        var oldValue:Number = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set religion(value:String) : void
    {
        var oldValue:String = _internal_religion;
        if (oldValue !== value)
        {
            _internal_religion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "religion", oldValue, _internal_religion));
        }
    }

    public function set history(value:String) : void
    {
        var oldValue:String = _internal_history;
        if (oldValue !== value)
        {
            _internal_history = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "history", oldValue, _internal_history));
        }
    }

    public function set patNr(value:String) : void
    {
        var oldValue:String = _internal_patNr;
        if (oldValue !== value)
        {
            _internal_patNr = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "patNr", oldValue, _internal_patNr));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set age(value:int) : void
    {
        var oldValue:int = _internal_age;
        if (oldValue !== value)
        {
            _internal_age = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "age", oldValue, _internal_age));
        }
    }

    public function set gender(value:String) : void
    {
        var oldValue:String = _internal_gender;
        if (oldValue !== value)
        {
            _internal_gender = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gender", oldValue, _internal_gender));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _PatientEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PatientEntityMetadata) : void
    {
        var oldValue : _PatientEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}
