.class Lio/rx_cache2/internal/g$5;
.super Ljava/lang/Object;
.source "ProcessorProvidersBehaviour.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/a;Lio/rx_cache2/internal/Record;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/rx_cache2/a;

.field final synthetic b:Lio/rx_cache2/internal/Record;

.field final synthetic c:Lio/rx_cache2/internal/g;


# direct methods
.method constructor <init>(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;Lio/rx_cache2/internal/Record;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lio/rx_cache2/internal/g$5;->c:Lio/rx_cache2/internal/g;

    iput-object p2, p0, Lio/rx_cache2/internal/g$5;->a:Lio/rx_cache2/a;

    iput-object p3, p0, Lio/rx_cache2/internal/g$5;->b:Lio/rx_cache2/internal/Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/rx_cache2/internal/g$5;->c:Lio/rx_cache2/internal/g;

    iget-object v1, p0, Lio/rx_cache2/internal/g$5;->a:Lio/rx_cache2/a;

    invoke-static {v0, v1}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;)V

    .line 138
    iget-object v0, p0, Lio/rx_cache2/internal/g$5;->a:Lio/rx_cache2/a;

    invoke-virtual {v0}, Lio/rx_cache2/a;->j()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/g$5;->a:Lio/rx_cache2/a;

    .line 139
    invoke-virtual {v0}, Lio/rx_cache2/a;->j()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/g$5;->c:Lio/rx_cache2/internal/g;

    .line 140
    invoke-static {v0}, Lio/rx_cache2/internal/g;->c(Lio/rx_cache2/internal/g;)Ljava/lang/Boolean;

    move-result-object v0

    .line 138
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lio/rx_cache2/internal/g$5;->b:Lio/rx_cache2/internal/Record;

    if-eqz v0, :cond_1

    .line 143
    new-instance p1, Lio/rx_cache2/n;

    iget-object v0, p0, Lio/rx_cache2/internal/g$5;->b:Lio/rx_cache2/internal/Record;

    invoke-virtual {v0}, Lio/rx_cache2/internal/Record;->getData()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/rx_cache2/internal/g$5;->b:Lio/rx_cache2/internal/Record;

    invoke-virtual {v1}, Lio/rx_cache2/internal/Record;->getSource()Lio/rx_cache2/Source;

    move-result-object v1

    iget-object v2, p0, Lio/rx_cache2/internal/g$5;->a:Lio/rx_cache2/a;

    invoke-virtual {v2}, Lio/rx_cache2/a;->i()Z

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lio/rx_cache2/n;-><init>(Ljava/lang/Object;Lio/rx_cache2/Source;Z)V

    return-object p1

    .line 146
    :cond_1
    new-instance v0, Lio/rx_cache2/RxCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Loader provided did not return any data and there is not data to load from the Cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/rx_cache2/internal/g$5;->a:Lio/rx_cache2/a;

    .line 148
    invoke-virtual {v2}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lio/rx_cache2/RxCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
