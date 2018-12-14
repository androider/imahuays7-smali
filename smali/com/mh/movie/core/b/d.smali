.class Lcom/mh/movie/core/b/d;
.super Ljava/lang/Object;
.source "M3u8.java"


# static fields
.field public static a:B = 0x0t

.field public static b:B = 0x1t

.field public static c:B = 0x2t


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:F

.field public g:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mh/movie/core/b/d;->d:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/mh/movie/core/b/d;->f:F

    .line 20
    sget-byte p2, Lcom/mh/movie/core/b/d;->a:B

    iput-byte p2, p0, Lcom/mh/movie/core/b/d;->g:B

    const-string p2, ".ts"

    const-string v0, ".tmp"

    .line 21
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/b/d;->e:Ljava/lang/String;

    return-void
.end method
