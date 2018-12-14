.class public final enum Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;
.super Ljava/lang/Enum;
.source "UpnpMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/message/UpnpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BodyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

.field public static final enum BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

.field public static final enum STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    new-instance v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    const-string v1, "BYTES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->$VALUES:[Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;
    .locals 1

    .line 41
    const-class v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;
    .locals 1

    .line 41
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->$VALUES:[Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v0}, [Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;

    return-object v0
.end method
