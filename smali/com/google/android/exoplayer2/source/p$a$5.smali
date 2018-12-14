.class Lcom/google/android/exoplayer2/source/p$a$5;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/p$a;->c(Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/p;

.field final synthetic b:Lcom/google/android/exoplayer2/source/p$b;

.field final synthetic c:Lcom/google/android/exoplayer2/source/p$c;

.field final synthetic d:Lcom/google/android/exoplayer2/source/p$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p$a$5;->d:Lcom/google/android/exoplayer2/source/p$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p$a$5;->a:Lcom/google/android/exoplayer2/source/p;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/p$a$5;->b:Lcom/google/android/exoplayer2/source/p$b;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/p$a$5;->c:Lcom/google/android/exoplayer2/source/p$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a$5;->a:Lcom/google/android/exoplayer2/source/p;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a$5;->d:Lcom/google/android/exoplayer2/source/p$a;

    iget v1, v1, Lcom/google/android/exoplayer2/source/p$a;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/p$a$5;->d:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/p$a$5;->b:Lcom/google/android/exoplayer2/source/p$b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/p$a$5;->c:Lcom/google/android/exoplayer2/source/p$c;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/p;->onLoadCanceled(ILcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/source/p$b;Lcom/google/android/exoplayer2/source/p$c;)V

    return-void
.end method
