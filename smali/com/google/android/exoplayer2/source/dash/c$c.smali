.class public final Lcom/google/android/exoplayer2/source/dash/c$c;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final b:Lcom/google/android/exoplayer2/upstream/f$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/google/android/exoplayer2/upstream/q$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/q$a<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/source/f;

.field private e:I

.field private f:J

.field private g:Z

.field private h:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/upstream/f$a;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/upstream/f$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->b:Lcom/google/android/exoplayer2/upstream/f$a;

    const/4 p1, 0x3

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:I

    const-wide/16 p1, -0x1

    .line 97
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->f:J

    .line 98
    new-instance p1, Lcom/google/android/exoplayer2/source/g;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->d:Lcom/google/android/exoplayer2/source/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/c;
    .locals 13

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->g:Z

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->c:Lcom/google/android/exoplayer2/upstream/q$a;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/a/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->c:Lcom/google/android/exoplayer2/upstream/q$a;

    .line 232
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c;

    const/4 v2, 0x0

    .line 234
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->b:Lcom/google/android/exoplayer2/upstream/f$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->c:Lcom/google/android/exoplayer2/upstream/q$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->d:Lcom/google/android/exoplayer2/source/f;

    iget v8, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:I

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->f:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->h:Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Lcom/google/android/exoplayer2/source/dash/a/b;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/f$a;Lcom/google/android/exoplayer2/upstream/q$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/source/f;IJLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/c$1;)V

    return-object v0
.end method

.method public synthetic b(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/o;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/c$c;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/c;

    move-result-object p1

    return-object p1
.end method
