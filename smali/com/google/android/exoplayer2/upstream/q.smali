.class public final Lcom/google/android/exoplayer2/upstream/q;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$c;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/h;

.field public final b:I

.field private final c:Lcom/google/android/exoplayer2/upstream/f;

.field private final d:Lcom/google/android/exoplayer2/upstream/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/q$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/f;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/q$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/f;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/q$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/upstream/h;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/exoplayer2/upstream/q;-><init>(Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/h;ILcom/google/android/exoplayer2/upstream/q$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/h;ILcom/google/android/exoplayer2/upstream/q$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/f;",
            "Lcom/google/android/exoplayer2/upstream/h;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/q$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/q;->c:Lcom/google/android/exoplayer2/upstream/f;

    .line 106
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    .line 107
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/q;->b:I

    .line 108
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/q;->d:Lcom/google/android/exoplayer2/upstream/q$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/q;->c:Lcom/google/android/exoplayer2/upstream/f;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/q;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/upstream/h;)V

    .line 137
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g;->b()V

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/q;->d:Lcom/google/android/exoplayer2/upstream/q$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/q;->c:Lcom/google/android/exoplayer2/upstream/f;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/f;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/upstream/q$a;->b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/q;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/q;->f:J

    .line 141
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 140
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/q;->f:J

    .line 141
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/q;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/q;->f:J

    return-wide v0
.end method
