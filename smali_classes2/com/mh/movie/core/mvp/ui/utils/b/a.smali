.class public final Lcom/mh/movie/core/mvp/ui/utils/b/a;
.super Ljava/lang/Object;
.source "MobclickAgent.java"


# static fields
.field public static a:Ljava/lang/String; = "MobclickAgent"

.field private static b:I = 0xa

.field private static c:I

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()V
    .locals 0

    .line 58
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->f()V

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->e()V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Ljava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/mh/movie/core/mvp/ui/utils/b/b;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/b;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/utils/b/a$1;

    invoke-direct {v1, p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a$1;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/b/b;->a(Ljava/util/Map;Lcom/mh/movie/core/mvp/ui/utils/b/b$a;)V

    return-void
.end method

.method public static b()V
    .locals 4

    .line 68
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v1, "quit"

    .line 69
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "returnHome"

    .line 70
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->e()V

    return-void
.end method

.method public static b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V
    .locals 3

    .line 86
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object p0, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    sget v0, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b:I

    if-lt p0, v0, :cond_0

    .line 90
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->c()V

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    sget-object v2, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    sget-object v2, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c()V
    .locals 2

    .line 95
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 96
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 99
    :cond_0
    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a(Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic d()V
    .locals 0

    .line 16
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->e()V

    return-void
.end method

.method private static e()V
    .locals 3

    .line 132
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Ljava/util/Map;)V

    .line 141
    :cond_1
    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v1

    sget-object v2, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/XMLUtils;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Ljava/util/Map;)V

    .line 156
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
