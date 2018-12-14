.class synthetic Lorg/fourthline/cling/protocol/ProtocolFactoryImpl$1;
.super Ljava/lang/Object;
.source "ProtocolFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    invoke-static {}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->values()[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl$1;->$SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl$1;->$SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl$1;->$SwitchMap$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
