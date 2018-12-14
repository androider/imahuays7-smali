.class public final enum Lorg/fourthline/cling/support/model/PortMapping$Protocol;
.super Ljava/lang/Enum;
.source "PortMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/PortMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/PortMapping$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/PortMapping$Protocol;

.field public static final enum TCP:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

.field public static final enum UDP:Lorg/fourthline/cling/support/model/PortMapping$Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    const-string v1, "UDP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/PortMapping$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->UDP:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    const-string v1, "TCP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/PortMapping$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->TCP:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    sget-object v1, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->UDP:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->TCP:Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    aput-object v1, v0, v3

    sput-object v0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->$VALUES:[Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PortMapping$Protocol;
    .locals 1

    .line 30
    const-class v0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/PortMapping$Protocol;
    .locals 1

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/PortMapping$Protocol;->$VALUES:[Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/PortMapping$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PortMapping$Protocol;

    return-object v0
.end method
