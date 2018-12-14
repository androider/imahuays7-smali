.class public abstract Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;
.super Ljava/lang/Object;
.source "AbstractMediaReceiverRegistrarService.java"


# annotations
.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceId;
        namespace = "microsoft.com"
        value = "X_MS_MediaReceiverRegistrar"
    .end subannotation
    serviceType = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        namespace = "microsoft.com"
        value = "X_MS_MediaReceiverRegistrar"
        version = 0x1
    .end subannotation
.end annotation

.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_DeviceID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "int"
            name = "A_ARG_TYPE_Result"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "bin.base64"
            name = "A_ARG_TYPE_RegistrationReqMsg"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "bin.base64"
            name = "A_ARG_TYPE_RegistrationRespMsg"
            sendEvents = false
        .end subannotation
    }
.end annotation


# instance fields
.field private authorizationDeniedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        eventMinimumDelta = 0x1
    .end annotation
.end field

.field private authorizationGrantedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        eventMinimumDelta = 0x1
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field private validationRevokedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
    .end annotation
.end field

.field private validationSucceededUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;-><init>(Ljava/beans/PropertyChangeSupport;)V

    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationGrantedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 69
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationDeniedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 72
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationSucceededUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 75
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationRevokedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {p1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-void
.end method


# virtual methods
.method public getAuthorizationDeniedUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "AuthorizationDeniedUpdateID"
            .end subannotation
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationDeniedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getAuthorizationGrantedUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "AuthorizationGrantedUpdateID"
            .end subannotation
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->authorizationGrantedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public getValidationRevokedUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "ValidationRevokedUpdateID"
            .end subannotation
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationRevokedUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getValidationSucceededUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "ValidationSucceededUpdateID"
            .end subannotation
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/support/xmicrosoft/AbstractMediaReceiverRegistrarService;->validationSucceededUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public isAuthorized(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "DeviceID"
            stateVariable = "A_ARG_TYPE_DeviceID"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public isValidated(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "DeviceID"
            stateVariable = "A_ARG_TYPE_DeviceID"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "Result"
                stateVariable = "A_ARG_TYPE_Result"
            .end subannotation
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public registerDevice([B)[B
    .locals 0
    .param p1    # [B
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "RegistrationReqMsg"
            stateVariable = "A_ARG_TYPE_RegistrationReqMsg"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "RegistrationRespMsg"
                stateVariable = "A_ARG_TYPE_RegistrationRespMsg"
            .end subannotation
        }
    .end annotation

    const/4 p1, 0x0

    .line 138
    new-array p1, p1, [B

    return-object p1
.end method
