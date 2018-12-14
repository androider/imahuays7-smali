.class public final Lcom/google/android/exoplayer2/c/a/a;
.super Ljava/lang/Object;
.source "RtmpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/f;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/s;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/s<",
            "-",
            "Lcom/google/android/exoplayer2/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lnet/butterflytv/rtmp_client/RtmpClient;

.field private c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtmp"

    .line 35
    invoke-static {v0}, Lcom/google/android/exoplayer2/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lcom/google/android/exoplayer2/upstream/s;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/s;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/s;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/s<",
            "-",
            "Lcom/google/android/exoplayer2/c/a/a;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a/a;->a:Lcom/google/android/exoplayer2/upstream/s;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lnet/butterflytv/rtmp_client/RtmpClient;

    invoke-virtual {v0, p1, p2, p3}, Lnet/butterflytv/rtmp_client/RtmpClient;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/c/a/a;->a:Lcom/google/android/exoplayer2/upstream/s;

    if-eqz p2, :cond_1

    .line 73
    iget-object p2, p0, Lcom/google/android/exoplayer2/c/a/a;->a:Lcom/google/android/exoplayer2/upstream/s;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/upstream/s;->a(Ljava/lang/Object;I)V

    :cond_1
    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/h;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/butterflytv/rtmp_client/RtmpClient$RtmpIOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lnet/butterflytv/rtmp_client/RtmpClient;

    invoke-direct {v0}, Lnet/butterflytv/rtmp_client/RtmpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lnet/butterflytv/rtmp_client/RtmpClient;

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lnet/butterflytv/rtmp_client/RtmpClient;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/h;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/butterflytv/rtmp_client/RtmpClient;->a(Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/h;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Landroid/net/Uri;

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->a:Lcom/google/android/exoplayer2/upstream/s;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->a:Lcom/google/android/exoplayer2/upstream/s;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/s;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/h;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    iput-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Landroid/net/Uri;

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->a:Lcom/google/android/exoplayer2/upstream/s;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->a:Lcom/google/android/exoplayer2/upstream/s;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/s;->a(Ljava/lang/Object;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lnet/butterflytv/rtmp_client/RtmpClient;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lnet/butterflytv/rtmp_client/RtmpClient;

    invoke-virtual {v0}, Lnet/butterflytv/rtmp_client/RtmpClient;->a()V

    .line 88
    iput-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lnet/butterflytv/rtmp_client/RtmpClient;

    :cond_1
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Landroid/net/Uri;

    return-object v0
.end method
