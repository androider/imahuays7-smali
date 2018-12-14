.class Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;
.super Ljava/lang/Object;
.source "RetrofitUrlManager.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;


# direct methods
.method constructor <init>(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;->this$0:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;->this$0:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-virtual {v0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;->this$0:Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->processRequest(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
