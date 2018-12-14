.class public final Lcom/google/android/exoplayer2/c/a/b;
.super Ljava/lang/Object;
.source "RtmpDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/f$a;


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


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/a/b;-><init>(Lcom/google/android/exoplayer2/upstream/s;)V

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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a/b;->a:Lcom/google/android/exoplayer2/upstream/s;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/f;
    .locals 2

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/c/a/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/b;->a:Lcom/google/android/exoplayer2/upstream/s;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/a/a;-><init>(Lcom/google/android/exoplayer2/upstream/s;)V

    return-object v0
.end method
