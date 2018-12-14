.class Lcom/facebook/imagepipeline/k/o$1;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lbolts/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/k/o;->b(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)Lbolts/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/f<",
        "Lcom/facebook/imagepipeline/g/e;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/an;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/imagepipeline/k/k;

.field final synthetic d:Lcom/facebook/imagepipeline/k/al;

.field final synthetic e:Lcom/facebook/imagepipeline/k/o;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/o$1;->e:Lcom/facebook/imagepipeline/k/o;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/imagepipeline/k/o$1;->c:Lcom/facebook/imagepipeline/k/k;

    iput-object p5, p0, Lcom/facebook/imagepipeline/k/o$1;->d:Lcom/facebook/imagepipeline/k/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lbolts/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/o$1;->b(Lbolts/g;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public b(Lbolts/g;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/g<",
            "Lcom/facebook/imagepipeline/g/e;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/facebook/imagepipeline/k/o;->a(Lbolts/g;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/imagepipeline/k/an;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/o$1;->c:Lcom/facebook/imagepipeline/k/k;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/k/k;->b()V

    goto/16 :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lbolts/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    const-string v3, "DiskCacheProducer"

    invoke-virtual {p1}, Lbolts/g;->f()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 96
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/o$1;->e:Lcom/facebook/imagepipeline/k/o;

    invoke-static {p1}, Lcom/facebook/imagepipeline/k/o;->a(Lcom/facebook/imagepipeline/k/o;)Lcom/facebook/imagepipeline/k/ak;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->c:Lcom/facebook/imagepipeline/k/k;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/o$1;->d:Lcom/facebook/imagepipeline/k/al;

    invoke-interface {p1, v0, v2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lbolts/g;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/g/e;

    if-eqz p1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    const-string v3, "DiskCacheProducer"

    iget-object v4, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->m()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v7, v6}, Lcom/facebook/imagepipeline/k/o;->a(Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v4

    .line 100
    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    const-string v3, "DiskCacheProducer"

    invoke-interface {v0, v2, v3, v7}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->c:Lcom/facebook/imagepipeline/k/k;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/k/k;->b(F)V

    .line 106
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->c:Lcom/facebook/imagepipeline/k/k;

    invoke-interface {v0, p1, v7}, Lcom/facebook/imagepipeline/k/k;->b(Ljava/lang/Object;I)V

    .line 107
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/g/e;->close()V

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/o$1;->a:Lcom/facebook/imagepipeline/k/an;

    iget-object v4, p0, Lcom/facebook/imagepipeline/k/o$1;->b:Ljava/lang/String;

    const/4 v5, 0x0

    .line 112
    invoke-static {v3, v4, v5, v5}, Lcom/facebook/imagepipeline/k/o;->a(Lcom/facebook/imagepipeline/k/an;Ljava/lang/String;ZI)Ljava/util/Map;

    move-result-object v3

    .line 109
    invoke-interface {p1, v0, v2, v3}, Lcom/facebook/imagepipeline/k/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    iget-object p1, p0, Lcom/facebook/imagepipeline/k/o$1;->e:Lcom/facebook/imagepipeline/k/o;

    invoke-static {p1}, Lcom/facebook/imagepipeline/k/o;->a(Lcom/facebook/imagepipeline/k/o;)Lcom/facebook/imagepipeline/k/ak;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/o$1;->c:Lcom/facebook/imagepipeline/k/k;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/o$1;->d:Lcom/facebook/imagepipeline/k/al;

    invoke-interface {p1, v0, v2}, Lcom/facebook/imagepipeline/k/ak;->a(Lcom/facebook/imagepipeline/k/k;Lcom/facebook/imagepipeline/k/al;)V

    :goto_0
    return-object v1
.end method
