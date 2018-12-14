.class final Lrx/internal/schedulers/ScheduledAction$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/ScheduledAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36e5888d681586eL


# instance fields
.field final a:Lrx/internal/schedulers/ScheduledAction;

.field final b:Lrx/f/b;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/ScheduledAction;Lrx/f/b;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 160
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction$b;->a:Lrx/internal/schedulers/ScheduledAction;

    .line 161
    iput-object p2, p0, Lrx/internal/schedulers/ScheduledAction$b;->b:Lrx/f/b;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$b;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {p0, v0, v1}, Lrx/internal/schedulers/ScheduledAction$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$b;->b:Lrx/f/b;

    iget-object v1, p0, Lrx/internal/schedulers/ScheduledAction$b;->a:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0, v1}, Lrx/f/b;->b(Lrx/f;)V

    :cond_0
    return-void
.end method
