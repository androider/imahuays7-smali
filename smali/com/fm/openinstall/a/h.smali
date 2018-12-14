.class Lcom/fm/openinstall/a/h;
.super Lcom/fm/openinstall/a/o;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/fm/openinstall/b/a;

.field final synthetic c:Lcom/fm/openinstall/a/f;


# direct methods
.method constructor <init>(Lcom/fm/openinstall/a/f;Lcom/fm/openinstall/a/m;JLandroid/net/Uri;Lcom/fm/openinstall/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    iput-object p5, p0, Lcom/fm/openinstall/a/h;->a:Landroid/net/Uri;

    iput-object p6, p0, Lcom/fm/openinstall/a/h;->b:Lcom/fm/openinstall/b/a;

    invoke-direct {p0, p2, p3, p4}, Lcom/fm/openinstall/a/o;-><init>(Lcom/fm/openinstall/a/m;J)V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/fm/openinstall/c/b;
    .locals 4

    iget-object v0, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    invoke-static {v0, p1, p2}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;J)Lcom/fm/openinstall/c/b;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/fm/openinstall/a/h;->a:Landroid/net/Uri;

    const/16 p2, -0xa

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    invoke-static {p1}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/fm/openinstall/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/fm/openinstall/c/b;

    sget-object v0, Lcom/fm/openinstall/c/c;->b:Lcom/fm/openinstall/c/c;

    invoke-direct {p1, v0, p2}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    :goto_0
    const-string p2, "network unavailable"

    :goto_1
    invoke-virtual {p1, p2}, Lcom/fm/openinstall/c/b;->b(Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/fm/openinstall/a/d;->a()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    iget-object v0, p0, Lcom/fm/openinstall/a/h;->b:Lcom/fm/openinstall/b/a;

    invoke-static {p2, p1, v0}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;Ljava/util/Map;Lcom/fm/openinstall/b/a;)V

    :goto_2
    iget-object p2, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    invoke-static {p2}, Lcom/fm/openinstall/a/f;->b(Lcom/fm/openinstall/a/f;)Lcom/fm/openinstall/c/a;

    move-result-object p2

    iget-object v0, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    const-string v1, "decode-wakeup-url"

    invoke-static {v0, v1}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    iget-object v2, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    invoke-static {v2}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/fm/openinstall/c/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/fm/openinstall/c/b;

    move-result-object p1

    iget-object p2, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    invoke-virtual {p1}, Lcom/fm/openinstall/c/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/fm/openinstall/a/f;->b(Lcom/fm/openinstall/a/f;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/fm/openinstall/a/h;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/fm/openinstall/f/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/fm/openinstall/c/b;

    sget-object v1, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    invoke-direct {p2, v1, v0}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    invoke-virtual {p2, p1}, Lcom/fm/openinstall/c/b;->c(Ljava/lang/String;)V

    move-object p1, p2

    return-object p1

    :cond_2
    new-instance p1, Lcom/fm/openinstall/c/b;

    sget-object p2, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    invoke-direct {p1, p2, v0}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/fm/openinstall/c/b;->c(Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "h"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/fm/openinstall/a/h;->c:Lcom/fm/openinstall/a/f;

    invoke-static {p1}, Lcom/fm/openinstall/a/f;->a(Lcom/fm/openinstall/a/f;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/fm/openinstall/c/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/fm/openinstall/c/b;

    sget-object v0, Lcom/fm/openinstall/c/c;->b:Lcom/fm/openinstall/c/c;

    invoke-direct {p1, v0, p2}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "wakeupUrl"

    iget-object v0, p0, Lcom/fm/openinstall/a/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5
    new-instance p1, Lcom/fm/openinstall/c/b;

    sget-object p2, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    invoke-direct {p1, p2, v0}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/fm/openinstall/c/b;

    sget-object p2, Lcom/fm/openinstall/c/c;->a:Lcom/fm/openinstall/c/c;

    invoke-direct {p1, p2, v0}, Lcom/fm/openinstall/c/b;-><init>(Lcom/fm/openinstall/c/c;I)V

    :goto_3
    const-string p2, "The wakeup parameter is invalid"

    goto/16 :goto_1

    :cond_7
    return-object p1
.end method
