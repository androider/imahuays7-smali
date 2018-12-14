.class final Lcom/google/android/exoplayer2/source/dash/c$f;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/dash/c;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/c;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$f;->a:Lcom/google/android/exoplayer2/source/dash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$f;->a:Lcom/google/android/exoplayer2/source/dash/c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/c;->c(Lcom/google/android/exoplayer2/source/dash/c;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$f;->a:Lcom/google/android/exoplayer2/source/dash/c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/c;->c(Lcom/google/android/exoplayer2/source/dash/c;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$f;->a:Lcom/google/android/exoplayer2/source/dash/c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/c;->b(Lcom/google/android/exoplayer2/source/dash/c;)Lcom/google/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 1269
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/c$f;->b()V

    return-void
.end method
