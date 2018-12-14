.class final Lcom/google/android/exoplayer2/source/a/d$a;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/Format;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/Format;

.field private e:Lcom/google/android/exoplayer2/extractor/o;


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->b:I

    .line 166
    iput p2, p0, Lcom/google/android/exoplayer2/source/a/d$a;->c:I

    .line 167
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a/d$a;->d:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/f;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/o;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/o;->a(Lcom/google/android/exoplayer2/extractor/f;IZ)I

    move-result p1

    return p1
.end method

.method public a(JIIILcom/google/android/exoplayer2/extractor/o$a;)V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/o;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/o;->a(JIIILcom/google/android/exoplayer2/extractor/o$a;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->d:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->d:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 185
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/o;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/o;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/d$b;)V
    .locals 2

    if-nez p1, :cond_0

    .line 172
    new-instance p1, Lcom/google/android/exoplayer2/extractor/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/o;

    return-void

    .line 175
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->c:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/a/d$b;->a(II)Lcom/google/android/exoplayer2/extractor/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/o;

    .line 176
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/o;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/o;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/o;I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/o;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/o;->a(Lcom/google/android/exoplayer2/util/o;I)V

    return-void
.end method
