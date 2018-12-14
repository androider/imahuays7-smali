.class public final enum Lorg/eclipse/jetty/servlet/Holder$Source;
.super Ljava/lang/Enum;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jetty/servlet/Holder$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/servlet/Holder$Source;

.field public static final enum ANNOTATION:Lorg/eclipse/jetty/servlet/Holder$Source;

.field public static final enum DESCRIPTOR:Lorg/eclipse/jetty/servlet/Holder$Source;

.field public static final enum EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

.field public static final enum JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 48
    new-instance v0, Lorg/eclipse/jetty/servlet/Holder$Source;

    const-string v1, "EMBEDDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/Holder$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    new-instance v0, Lorg/eclipse/jetty/servlet/Holder$Source;

    const-string v1, "JAVAX_API"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/servlet/Holder$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    new-instance v0, Lorg/eclipse/jetty/servlet/Holder$Source;

    const-string v1, "DESCRIPTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/servlet/Holder$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->DESCRIPTOR:Lorg/eclipse/jetty/servlet/Holder$Source;

    new-instance v0, Lorg/eclipse/jetty/servlet/Holder$Source;

    const-string v1, "ANNOTATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/eclipse/jetty/servlet/Holder$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->ANNOTATION:Lorg/eclipse/jetty/servlet/Holder$Source;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/eclipse/jetty/servlet/Holder$Source;

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->DESCRIPTOR:Lorg/eclipse/jetty/servlet/Holder$Source;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->ANNOTATION:Lorg/eclipse/jetty/servlet/Holder$Source;

    aput-object v1, v0, v5

    sput-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->$VALUES:[Lorg/eclipse/jetty/servlet/Holder$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/Holder$Source;
    .locals 1

    .line 48
    const-class v0, Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jetty/servlet/Holder$Source;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jetty/servlet/Holder$Source;
    .locals 1

    .line 48
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->$VALUES:[Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/Holder$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/Holder$Source;

    return-object v0
.end method
