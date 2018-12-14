.class public final Lcom/flurry/sdk/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/e;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/e;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/h;Z)V
    .locals 5

    if-nez p2, :cond_0

    .line 246
    iget-object p2, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {p2}, Lcom/flurry/sdk/e;->e(Lcom/flurry/sdk/e;)Z

    .line 250
    :cond_0
    iget-object p2, p1, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/h$a;

    sget-object v0, Lcom/flurry/sdk/h$a;->a:Lcom/flurry/sdk/h$a;

    if-ne p2, v0, :cond_2

    .line 251
    invoke-static {}, Lcom/flurry/sdk/e;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fetch succeeded."

    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object p1, Lcom/flurry/sdk/e$a;->a:Lcom/flurry/sdk/e$a;

    .line 256
    iget-object p2, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {p2}, Lcom/flurry/sdk/e;->f(Lcom/flurry/sdk/e;)Z

    .line 257
    invoke-static {}, Lcom/flurry/sdk/k;->a()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/k;

    .line 259
    iget-object v1, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {v1}, Lcom/flurry/sdk/e;->d(Lcom/flurry/sdk/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {v1}, Lcom/flurry/sdk/e;->d(Lcom/flurry/sdk/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 262
    :goto_1
    iget-object v3, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {v3}, Lcom/flurry/sdk/e;->d(Lcom/flurry/sdk/e;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    :cond_2
    iget-object p2, p1, Lcom/flurry/sdk/h;->d:Lcom/flurry/sdk/h$a;

    sget-object v0, Lcom/flurry/sdk/h$a;->b:Lcom/flurry/sdk/h$a;

    if-ne p2, v0, :cond_3

    .line 265
    invoke-static {}, Lcom/flurry/sdk/e;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fetch finished."

    invoke-static {p1, p2}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object p1, Lcom/flurry/sdk/e$a;->b:Lcom/flurry/sdk/e$a;

    goto :goto_2

    .line 269
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/e;->e()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occured while fetching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/flurry/sdk/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object p1, Lcom/flurry/sdk/e$a;->c:Lcom/flurry/sdk/e$a;

    .line 275
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {p2}, Lcom/flurry/sdk/e;->g(Lcom/flurry/sdk/e;)Lcom/flurry/sdk/e$a;

    move-result-object p2

    .line 1057
    iget p2, p2, Lcom/flurry/sdk/e$a;->e:I

    .line 2057
    iget v0, p1, Lcom/flurry/sdk/e$a;->e:I

    if-gt p2, v0, :cond_5

    .line 276
    iget-object p2, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {p2, p1}, Lcom/flurry/sdk/e;->a(Lcom/flurry/sdk/e;Lcom/flurry/sdk/e$a;)Lcom/flurry/sdk/e$a;

    .line 278
    :cond_5
    iget-object p2, p0, Lcom/flurry/sdk/e$2;->a:Lcom/flurry/sdk/e;

    invoke-static {p2, p1}, Lcom/flurry/sdk/e;->b(Lcom/flurry/sdk/e;Lcom/flurry/sdk/e$a;)V

    return-void
.end method
