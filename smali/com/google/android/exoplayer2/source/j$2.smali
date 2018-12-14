.class Lcom/google/android/exoplayer2/source/j$2;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/j;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/f;[Lcom/google/android/exoplayer2/extractor/e;ILcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/j$c;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/j;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/j;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/j$2;->a:Lcom/google/android/exoplayer2/source/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$2;->a:Lcom/google/android/exoplayer2/source/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/j;->b(Lcom/google/android/exoplayer2/source/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/j$2;->a:Lcom/google/android/exoplayer2/source/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/j;->c(Lcom/google/android/exoplayer2/source/j;)Lcom/google/android/exoplayer2/source/n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/j$2;->a:Lcom/google/android/exoplayer2/source/j;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/source/u;)V

    :cond_0
    return-void
.end method
