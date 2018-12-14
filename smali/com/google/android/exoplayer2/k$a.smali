.class final Lcom/google/android/exoplayer2/k$a;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/o;

.field public final b:Lcom/google/android/exoplayer2/ad;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/ad;Ljava/lang/Object;)V
    .locals 0

    .line 1690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1691
    iput-object p1, p0, Lcom/google/android/exoplayer2/k$a;->a:Lcom/google/android/exoplayer2/source/o;

    .line 1692
    iput-object p2, p0, Lcom/google/android/exoplayer2/k$a;->b:Lcom/google/android/exoplayer2/ad;

    .line 1693
    iput-object p3, p0, Lcom/google/android/exoplayer2/k$a;->c:Ljava/lang/Object;

    return-void
.end method
