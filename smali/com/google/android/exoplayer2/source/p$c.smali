.class public final Lcom/google/android/exoplayer2/source/p$c;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/google/android/exoplayer2/source/p$c;->a:I

    .line 127
    iput p2, p0, Lcom/google/android/exoplayer2/source/p$c;->b:I

    .line 128
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/p$c;->c:Lcom/google/android/exoplayer2/Format;

    .line 129
    iput p4, p0, Lcom/google/android/exoplayer2/source/p$c;->d:I

    .line 130
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/p$c;->e:Ljava/lang/Object;

    .line 131
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/p$c;->f:J

    .line 132
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/p$c;->g:J

    return-void
.end method
