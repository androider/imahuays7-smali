.class Lrx/internal/schedulers/a$a;
.super Lrx/d$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lrx/internal/util/c;

.field private final b:Lrx/f/b;

.field private final c:Lrx/internal/util/c;

.field private final d:Lrx/internal/schedulers/a$c;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/a$c;)V
    .locals 4

    .line 143
    invoke-direct {p0}, Lrx/d$a;-><init>()V

    .line 138
    new-instance v0, Lrx/internal/util/c;

    invoke-direct {v0}, Lrx/internal/util/c;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/c;

    .line 139
    new-instance v0, Lrx/f/b;

    invoke-direct {v0}, Lrx/f/b;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->b:Lrx/f/b;

    .line 140
    new-instance v0, Lrx/internal/util/c;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/f;

    iget-object v2, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lrx/internal/schedulers/a$a;->b:Lrx/f/b;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lrx/internal/util/c;-><init>([Lrx/f;)V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/c;

    .line 144
    iput-object p1, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    return-void
.end method


# virtual methods
.method public a(Lrx/b/a;)Lrx/f;
    .locals 6

    .line 160
    invoke-virtual {p0}, Lrx/internal/schedulers/a$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lrx/f/c;->a()Lrx/f;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/c;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/a$c;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/c;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object p1

    return-object p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/c;

    invoke-virtual {v0}, Lrx/internal/util/c;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 150
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/c;

    invoke-virtual {v0}, Lrx/internal/util/c;->unsubscribe()V

    return-void
.end method
