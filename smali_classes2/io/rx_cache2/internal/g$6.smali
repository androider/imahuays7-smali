.class Lio/rx_cache2/internal/g$6;
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
        "Lio/rx_cache2/n;",
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

    .line 111
    iput-object p1, p0, Lio/rx_cache2/internal/g$6;->c:Lio/rx_cache2/internal/g;

    iput-object p2, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    iput-object p3, p0, Lio/rx_cache2/internal/g$6;->b:Lio/rx_cache2/internal/Record;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/rx_cache2/n;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-virtual {v0}, Lio/rx_cache2/a;->j()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    .line 114
    invoke-virtual {v0}, Lio/rx_cache2/a;->j()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->c:Lio/rx_cache2/internal/g;

    .line 115
    invoke-static {v0}, Lio/rx_cache2/internal/g;->c(Lio/rx_cache2/internal/g;)Ljava/lang/Boolean;

    move-result-object v0

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->b:Lio/rx_cache2/internal/Record;

    if-eqz v0, :cond_1

    .line 118
    new-instance p1, Lio/rx_cache2/n;

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->b:Lio/rx_cache2/internal/Record;

    invoke-virtual {v0}, Lio/rx_cache2/internal/Record;->getData()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/rx_cache2/internal/g$6;->b:Lio/rx_cache2/internal/Record;

    invoke-virtual {v1}, Lio/rx_cache2/internal/Record;->getSource()Lio/rx_cache2/Source;

    move-result-object v1

    iget-object v2, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-virtual {v2}, Lio/rx_cache2/a;->i()Z

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lio/rx_cache2/n;-><init>(Ljava/lang/Object;Lio/rx_cache2/Source;Z)V

    return-object p1

    .line 121
    :cond_1
    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->c:Lio/rx_cache2/internal/g;

    iget-object v1, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-static {v0, v1}, Lio/rx_cache2/internal/g;->a(Lio/rx_cache2/internal/g;Lio/rx_cache2/a;)V

    if-nez p1, :cond_2

    .line 124
    new-instance p1, Lio/rx_cache2/RxCacheException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Loader provided did not return any data and there is not data to load from the Cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    .line 126
    invoke-virtual {v1}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/rx_cache2/RxCacheException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->c:Lio/rx_cache2/internal/g;

    invoke-static {v0}, Lio/rx_cache2/internal/g;->d(Lio/rx_cache2/internal/g;)Lio/rx_cache2/internal/cache/o;

    move-result-object v1

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-virtual {v0}, Lio/rx_cache2/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-virtual {v0}, Lio/rx_cache2/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    .line 130
    invoke-virtual {v0}, Lio/rx_cache2/a;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-virtual {v0}, Lio/rx_cache2/a;->d()Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    .line 131
    invoke-virtual {v0}, Lio/rx_cache2/a;->h()Z

    move-result v7

    iget-object v0, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-virtual {v0}, Lio/rx_cache2/a;->i()Z

    move-result v8

    move-object v5, p1

    .line 129
    invoke-virtual/range {v1 .. v8}, Lio/rx_cache2/internal/cache/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Long;ZZ)V

    .line 132
    new-instance v0, Lio/rx_cache2/n;

    sget-object v1, Lio/rx_cache2/Source;->CLOUD:Lio/rx_cache2/Source;

    iget-object v2, p0, Lio/rx_cache2/internal/g$6;->a:Lio/rx_cache2/a;

    invoke-virtual {v2}, Lio/rx_cache2/a;->i()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lio/rx_cache2/n;-><init>(Ljava/lang/Object;Lio/rx_cache2/Source;Z)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lio/rx_cache2/internal/g$6;->a(Ljava/lang/Object;)Lio/rx_cache2/n;

    move-result-object p1

    return-object p1
.end method
