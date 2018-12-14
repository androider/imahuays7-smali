.class public final enum Lorg/android/spdy/SpdyVersion;
.super Ljava/lang/Enum;
.source "SpdyVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/android/spdy/SpdyVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SPDY2:Lorg/android/spdy/SpdyVersion;

.field public static final enum SPDY3:Lorg/android/spdy/SpdyVersion;

.field public static final enum SPDY3DOT1:Lorg/android/spdy/SpdyVersion;

.field private static final synthetic b:[Lorg/android/spdy/SpdyVersion;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lorg/android/spdy/SpdyVersion;

    const-string v1, "SPDY2"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyVersion;->SPDY2:Lorg/android/spdy/SpdyVersion;

    .line 15
    new-instance v0, Lorg/android/spdy/SpdyVersion;

    const-string v1, "SPDY3"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4}, Lorg/android/spdy/SpdyVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    .line 19
    new-instance v0, Lorg/android/spdy/SpdyVersion;

    const-string v1, "SPDY3DOT1"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v3, v6}, Lorg/android/spdy/SpdyVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyVersion;->SPDY3DOT1:Lorg/android/spdy/SpdyVersion;

    .line 7
    new-array v0, v4, [Lorg/android/spdy/SpdyVersion;

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY2:Lorg/android/spdy/SpdyVersion;

    aput-object v1, v0, v2

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3DOT1:Lorg/android/spdy/SpdyVersion;

    aput-object v1, v0, v3

    sput-object v0, Lorg/android/spdy/SpdyVersion;->b:[Lorg/android/spdy/SpdyVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lorg/android/spdy/SpdyVersion;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/spdy/SpdyVersion;
    .locals 1

    .line 7
    const-class v0, Lorg/android/spdy/SpdyVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/android/spdy/SpdyVersion;

    return-object p0
.end method

.method public static values()[Lorg/android/spdy/SpdyVersion;
    .locals 1

    .line 7
    sget-object v0, Lorg/android/spdy/SpdyVersion;->b:[Lorg/android/spdy/SpdyVersion;

    invoke-virtual {v0}, [Lorg/android/spdy/SpdyVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/spdy/SpdyVersion;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/android/spdy/SpdyVersion;->a:I

    return v0
.end method
