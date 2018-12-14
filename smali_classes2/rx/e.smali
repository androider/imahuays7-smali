.class public abstract Lrx/e;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/b;
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b<",
        "TT;>;",
        "Lrx/f;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private final b:Lrx/internal/util/c;

.field private final c:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lrx/c;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lrx/e;->a:Ljava/lang/Long;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, v0, v1}, Lrx/e;-><init>(Lrx/e;Z)V

    return-void
.end method

.method protected constructor <init>(Lrx/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1, v0}, Lrx/e;-><init>(Lrx/e;Z)V

    return-void
.end method

.method protected constructor <init>(Lrx/e;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e<",
            "*>;Z)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lrx/e;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/e;->e:J

    .line 80
    iput-object p1, p0, Lrx/e;->c:Lrx/e;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p1, Lrx/e;->b:Lrx/internal/util/c;

    goto :goto_0

    :cond_0
    new-instance p1, Lrx/internal/util/c;

    invoke-direct {p1}, Lrx/internal/util/c;-><init>()V

    :goto_0
    iput-object p1, p0, Lrx/e;->b:Lrx/internal/util/c;

    return-void
.end method

.method private b(J)V
    .locals 5

    .line 161
    iget-wide v0, p0, Lrx/e;->e:J

    sget-object v2, Lrx/e;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 162
    iput-wide p1, p0, Lrx/e;->e:J

    goto :goto_0

    .line 164
    :cond_0
    iget-wide v0, p0, Lrx/e;->e:J

    add-long v2, v0, p1

    const-wide/16 p1, 0x0

    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 167
    iput-wide p1, p0, Lrx/e;->e:J

    goto :goto_0

    .line 169
    :cond_1
    iput-wide v2, p0, Lrx/e;->e:J

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected final a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number requested cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lrx/e;->d:Lrx/c;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lrx/e;->d:Lrx/c;

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-interface {v0, p1, p2}, Lrx/c;->request(J)V

    return-void

    .line 152
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lrx/e;->b(J)V

    .line 153
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lrx/f;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lrx/e;->b:Lrx/internal/util/c;

    invoke-virtual {v0, p1}, Lrx/internal/util/c;->a(Lrx/f;)V

    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lrx/e;->b:Lrx/internal/util/c;

    invoke-virtual {v0}, Lrx/internal/util/c;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 1

    .line 98
    iget-object v0, p0, Lrx/e;->b:Lrx/internal/util/c;

    invoke-virtual {v0}, Lrx/internal/util/c;->unsubscribe()V

    return-void
.end method
