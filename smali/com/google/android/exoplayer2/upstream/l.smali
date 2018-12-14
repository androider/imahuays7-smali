.class public final Lcom/google/android/exoplayer2/upstream/l;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/upstream/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/s<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/upstream/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/s;Lcom/google/android/exoplayer2/upstream/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/s<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/f;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/f$a;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/l;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/l;->b:Lcom/google/android/exoplayer2/upstream/s;

    .line 60
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/l;->c:Lcom/google/android/exoplayer2/upstream/f$a;

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/google/android/exoplayer2/upstream/f;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/l;->b()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/upstream/k;
    .locals 4

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/upstream/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/l;->b:Lcom/google/android/exoplayer2/upstream/s;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/l;->c:Lcom/google/android/exoplayer2/upstream/f$a;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/upstream/f$a;->a()Lcom/google/android/exoplayer2/upstream/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/k;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/s;Lcom/google/android/exoplayer2/upstream/f;)V

    return-object v0
.end method
