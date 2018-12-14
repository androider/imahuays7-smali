.class public final enum Lorg/eclipse/jetty/io/Buffers$Type;
.super Ljava/lang/Enum;
.source "Buffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/io/Buffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jetty/io/Buffers$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/io/Buffers$Type;

.field public static final enum BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

.field public static final enum DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

.field public static final enum INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lorg/eclipse/jetty/io/Buffers$Type;

    const-string v1, "BYTE_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/Buffers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    new-instance v0, Lorg/eclipse/jetty/io/Buffers$Type;

    const-string v1, "DIRECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/io/Buffers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    new-instance v0, Lorg/eclipse/jetty/io/Buffers$Type;

    const-string v1, "INDIRECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/io/Buffers$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/jetty/io/Buffers$Type;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->$VALUES:[Lorg/eclipse/jetty/io/Buffers$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 31
    const-class v0, Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jetty/io/Buffers$Type;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .line 31
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->$VALUES:[Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/io/Buffers$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method
