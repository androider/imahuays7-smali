.class public Lcom/jess/arms/a/a/c;
.super Ljava/lang/Object;
.source "AppDelegate.java"

# interfaces
.implements Lcom/jess/arms/a/a;
.implements Lcom/jess/arms/a/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/a/a/c$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Application$ActivityLifecycleCallbacks;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "ActivityLifecycle"
    .end annotation
.end field

.field protected b:Landroid/app/Application$ActivityLifecycleCallbacks;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "ActivityLifecycleForRxLifecycle"
    .end annotation
.end field

.field private c:Landroid/app/Application;

.field private d:Lcom/jess/arms/b/a/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jess/arms/integration/ConfigModule;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jess/arms/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/ComponentCallbacks2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jess/arms/a/a/c;->g:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/jess/arms/integration/ManifestParser;

    invoke-direct {v0, p1}, Lcom/jess/arms/integration/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jess/arms/integration/ManifestParser;->parse()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/a/c;->e:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/jess/arms/a/a/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/ConfigModule;

    .line 82
    iget-object v2, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Lcom/jess/arms/integration/ConfigModule;->injectAppLifecycle(Landroid/content/Context;Ljava/util/List;)V

    .line 85
    iget-object v2, p0, Lcom/jess/arms/a/a/c;->g:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Lcom/jess/arms/integration/ConfigModule;->injectActivityLifecycle(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Lcom/jess/arms/b/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/jess/arms/integration/ConfigModule;",
            ">;)",
            "Lcom/jess/arms/b/b/n;"
        }
    .end annotation

    .line 182
    invoke-static {}, Lcom/jess/arms/b/b/n;->a()Lcom/jess/arms/b/b/n$a;

    move-result-object v0

    .line 185
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/ConfigModule;

    .line 186
    invoke-interface {v1, p1, v0}, Lcom/jess/arms/integration/ConfigModule;->applyOptions(Landroid/content/Context;Lcom/jess/arms/b/b/n$a;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/jess/arms/b/b/n$a;->a()Lcom/jess/arms/b/b/n;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lcom/jess/arms/b/a/a;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/jess/arms/a/a/c;->d:Lcom/jess/arms/b/a/a;

    const-string v1, "%s cannot be null, first call %s#onCreate(Application) in %s#onCreate()"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Lcom/jess/arms/b/a/a;

    .line 204
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    if-nez v3, :cond_0

    const-class v3, Landroid/app/Application;

    .line 205
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :goto_1
    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 202
    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/jess/arms/a/a/c;->d:Lcom/jess/arms/b/a/a;

    return-object v0
.end method

.method public a(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    .line 102
    invoke-static {}, Lcom/jess/arms/b/a/b;->k()Lcom/jess/arms/b/a/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    .line 103
    invoke-interface {p1, v0}, Lcom/jess/arms/b/a/a$a;->a(Landroid/app/Application;)Lcom/jess/arms/b/a/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/jess/arms/a/a/c;->e:Ljava/util/List;

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/jess/arms/a/a/c;->a(Landroid/content/Context;Ljava/util/List;)Lcom/jess/arms/b/b/n;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/jess/arms/b/a/a$a;->a(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/a/a$a;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Lcom/jess/arms/b/a/a$a;->a()Lcom/jess/arms/b/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/a/a/c;->d:Lcom/jess/arms/b/a/a;

    .line 106
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->d:Lcom/jess/arms/b/a/a;

    invoke-interface {p1, p0}, Lcom/jess/arms/b/a/a;->a(Lcom/jess/arms/a/a/c;)V

    .line 112
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->d:Lcom/jess/arms/b/a/a;

    invoke-interface {p1}, Lcom/jess/arms/b/a/a;->i()Lcom/jess/arms/integration/cache/Cache;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/jess/arms/integration/ConfigModule;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jess/arms/a/a/c;->e:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/jess/arms/integration/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->e:Ljava/util/List;

    .line 117
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 120
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 125
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 126
    iget-object v1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance p1, Lcom/jess/arms/a/a/c$a;

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/jess/arms/a/a/c;->d:Lcom/jess/arms/b/a/a;

    invoke-direct {p1, v0, v1}, Lcom/jess/arms/a/a/c$a;-><init>(Landroid/app/Application;Lcom/jess/arms/b/a/a;)V

    iput-object p1, p0, Lcom/jess/arms/a/a/c;->h:Landroid/content/ComponentCallbacks2;

    .line 132
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->h:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 135
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/a/a/e;

    .line 136
    iget-object v1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/jess/arms/a/a/e;->a(Landroid/app/Application;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    iget-object v0, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/a/a/e;

    .line 94
    invoke-interface {v1, p1}, Lcom/jess/arms/a/a/e;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->h:Landroid/content/ComponentCallbacks2;

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/jess/arms/a/a/c;->h:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->g:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/jess/arms/a/a/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 154
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 155
    iget-object v1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 159
    iget-object p1, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/a/a/e;

    .line 160
    iget-object v1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/jess/arms/a/a/e;->b(Landroid/app/Application;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->d:Lcom/jess/arms/b/a/a;

    .line 164
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 165
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 166
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->g:Ljava/util/List;

    .line 167
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->h:Landroid/content/ComponentCallbacks2;

    .line 168
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->f:Ljava/util/List;

    .line 169
    iput-object p1, p0, Lcom/jess/arms/a/a/c;->c:Landroid/app/Application;

    return-void
.end method
