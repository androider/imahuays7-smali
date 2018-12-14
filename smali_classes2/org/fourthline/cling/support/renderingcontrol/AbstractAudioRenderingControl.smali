.class public abstract Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;
.super Ljava/lang/Object;
.source "AbstractAudioRenderingControl.java"

# interfaces
.implements Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;


# annotations
.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceId;
        value = "RenderingControl"
    .end subannotation
    serviceType = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        value = "RenderingControl"
        version = 0x1
    .end subannotation
    stringConvertibleTypes = {
        Lorg/fourthline/cling/support/lastchange/LastChange;
    }
.end annotation

.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "PresetNameList"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "boolean"
            name = "Mute"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValueMaximum = 0x64L
            allowedValueMinimum = 0x0L
            datatype = "ui2"
            name = "Volume"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValueMaximum = 0x7fffL
            allowedValueMinimum = -0x9000L
            datatype = "i2"
            name = "VolumeDB"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "boolean"
            name = "Loudness"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/Channel;
            name = "A_ARG_TYPE_Channel"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/PresetName;
            name = "A_ARG_TYPE_PresetName"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_InstanceID"
            sendEvents = false
        .end subannotation
    }
.end annotation


# instance fields
.field private final lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
        eventMaximumRateMilliseconds = 0xc8
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 99
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;

    invoke-direct {v1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;-><init>()V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 109
    new-instance p1, Lorg/fourthline/cling/support/lastchange/LastChange;

    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;

    invoke-direct {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;-><init>()V

    invoke-direct {p1, v0}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    iput-object p1, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/lastchange/LastChange;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 114
    iput-object p2, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/support/lastchange/LastChange;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 104
    iput-object p1, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-void
.end method

.method public static getDefaultInstanceID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 3

    .line 142
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public appendCurrentState(Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->getCurrentChannels()[Lorg/fourthline/cling/support/model/Channel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 125
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/Channel;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    .line 126
    new-array v6, v6, [Lorg/fourthline/cling/support/lastchange/EventedValue;

    new-instance v7, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Mute;

    new-instance v8, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;

    .line 128
    invoke-virtual {p0, p2, v5}, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->getMute(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Boolean;)V

    invoke-direct {v7, v8}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Mute;-><init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;)V

    aput-object v7, v6, v2

    new-instance v7, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Loudness;

    new-instance v8, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;

    .line 129
    invoke-virtual {p0, p2, v5}, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->getLoudness(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Boolean;)V

    invoke-direct {v7, v8}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Loudness;-><init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelLoudness;)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    new-instance v8, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Volume;

    new-instance v9, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    .line 130
    invoke-virtual {p0, p2, v5}, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->getVolume(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v10

    invoke-virtual {v10}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;->getValue()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Integer;)V

    invoke-direct {v8, v9}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Volume;-><init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;)V

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$VolumeDB;

    new-instance v9, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    .line 131
    invoke-virtual {p0, p2, v5}, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->getVolumeDB(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v9, v4, v5}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Integer;)V

    invoke-direct {v8, v9}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$VolumeDB;-><init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;)V

    aput-object v8, v6, v7

    const/4 v4, 0x4

    new-instance v5, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$PresetNameList;

    sget-object v7, Lorg/fourthline/cling/support/model/PresetName;->FactoryDefaults:Lorg/fourthline/cling/support/model/PresetName;

    .line 132
    invoke-virtual {v7}, Lorg/fourthline/cling/support/model/PresetName;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/RenderingControlVariable$PresetNameList;-><init>(Ljava/lang/String;)V

    aput-object v5, v6, v4

    .line 126
    invoke-virtual {p1, p2, v6}, Lorg/fourthline/cling/support/lastchange/LastChange;->setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;[Lorg/fourthline/cling/support/lastchange/EventedValue;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getChannel(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Channel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-static {p1}, Lorg/fourthline/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Channel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :catch_0
    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported audio channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getCurrentChannels()[Lorg/fourthline/cling/support/model/Channel;
.end method

.method public getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-object v0
.end method

.method public getLoudness(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentLoudness"
                stateVariable = "Loudness"
            .end subannotation
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public abstract getMute(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Z
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentMute"
                stateVariable = "Mute"
            .end subannotation
        }
    .end annotation
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public abstract getVolume(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentVolume"
                stateVariable = "Volume"
            .end subannotation
        }
    .end annotation
.end method

.method public getVolumeDB(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentVolume"
                stateVariable = "VolumeDB"
            .end subannotation
        }
    .end annotation

    const/4 p1, 0x0

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getVolumeDBRange(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/fourthline/cling/support/model/VolumeDBRange;
    .locals 1
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getMinValue"
                name = "MinValue"
                stateVariable = "VolumeDB"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getMaxValue"
                name = "MaxValue"
                stateVariable = "VolumeDB"
            .end subannotation
        }
    .end annotation

    .line 196
    new-instance p1, Lorg/fourthline/cling/support/model/VolumeDBRange;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/fourthline/cling/support/model/VolumeDBRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p1
.end method

.method public listPresets(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Ljava/lang/String;
    .locals 0
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentPresetNameList"
                stateVariable = "PresetNameList"
            .end subannotation
        }
    .end annotation

    .line 147
    sget-object p1, Lorg/fourthline/cling/support/model/PresetName;->FactoryDefaults:Lorg/fourthline/cling/support/model/PresetName;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/PresetName;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public selectPreset(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "PresetName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation

    return-void
.end method

.method public setLoudness(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredLoudness"
            stateVariable = "Loudness"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation

    return-void
.end method

.method public abstract setMute(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Z)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredMute"
            stateVariable = "Mute"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setVolume(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;)V
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3    # Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredVolume"
            stateVariable = "Volume"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public setVolumeDB(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredVolume"
            stateVariable = "VolumeDB"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation

    return-void
.end method
