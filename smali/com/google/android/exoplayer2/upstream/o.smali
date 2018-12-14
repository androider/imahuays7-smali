.class public final Lcom/google/android/exoplayer2/upstream/o;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/f$a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/s<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/FileDataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Lcom/google/android/exoplayer2/upstream/s;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/s<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/FileDataSource;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->a:Lcom/google/android/exoplayer2/upstream/s;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/f;
    .locals 2

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->a:Lcom/google/android/exoplayer2/upstream/s;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/s;)V

    return-object v0
.end method
