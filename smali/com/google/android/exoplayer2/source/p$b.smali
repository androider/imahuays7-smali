.class public final Lcom/google/android/exoplayer2/source/p$b;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/h;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;JJJ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p$b;->a:Lcom/google/android/exoplayer2/upstream/h;

    .line 59
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/p$b;->b:J

    .line 60
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/p$b;->c:J

    .line 61
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/p$b;->d:J

    return-void
.end method
