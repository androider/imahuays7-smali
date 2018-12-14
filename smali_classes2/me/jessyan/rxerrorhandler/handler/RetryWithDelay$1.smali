.class Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;
.super Ljava/lang/Object;
.source "RetryWithDelay.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;


# direct methods
.method constructor <init>(Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    invoke-static {v0}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;->access$004(Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;)I

    move-result v0

    iget-object v1, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    invoke-static {v1}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;->access$100(Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 55
    iget-object p1, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    iget-object p1, p1, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Observable get error, it will try after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    invoke-static {v1}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;->access$200(Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " second, retry count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    .line 56
    invoke-static {v1}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;->access$000(Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p1, p0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->this$0:Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    invoke-static {p1}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;->access$200(Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;)I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay$1;->apply(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
