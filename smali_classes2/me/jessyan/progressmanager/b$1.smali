.class Lme/jessyan/progressmanager/b$1;
.super Ljava/lang/Object;
.source "ProgressManager.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jessyan/progressmanager/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/jessyan/progressmanager/b;


# direct methods
.method constructor <init>(Lme/jessyan/progressmanager/b;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lme/jessyan/progressmanager/b$1;->a:Lme/jessyan/progressmanager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lme/jessyan/progressmanager/b$1;->a:Lme/jessyan/progressmanager/b;

    iget-object v1, p0, Lme/jessyan/progressmanager/b$1;->a:Lme/jessyan/progressmanager/b;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/jessyan/progressmanager/b;->a(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lme/jessyan/progressmanager/b;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
