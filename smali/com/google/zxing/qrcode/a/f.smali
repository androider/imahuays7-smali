.class public final Lcom/google/zxing/qrcode/a/f;
.super Ljava/lang/Object;
.source "FinderPatternInfo.java"


# instance fields
.field private final a:Lcom/google/zxing/qrcode/a/d;

.field private final b:Lcom/google/zxing/qrcode/a/d;

.field private final c:Lcom/google/zxing/qrcode/a/d;


# direct methods
.method public constructor <init>([Lcom/google/zxing/qrcode/a/d;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/a/f;->a:Lcom/google/zxing/qrcode/a/d;

    const/4 v0, 0x1

    .line 33
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/a/f;->b:Lcom/google/zxing/qrcode/a/d;

    const/4 v0, 0x2

    .line 34
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/zxing/qrcode/a/f;->c:Lcom/google/zxing/qrcode/a/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/zxing/qrcode/a/d;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/f;->a:Lcom/google/zxing/qrcode/a/d;

    return-object v0
.end method

.method public b()Lcom/google/zxing/qrcode/a/d;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/f;->b:Lcom/google/zxing/qrcode/a/d;

    return-object v0
.end method

.method public c()Lcom/google/zxing/qrcode/a/d;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/zxing/qrcode/a/f;->c:Lcom/google/zxing/qrcode/a/d;

    return-object v0
.end method
