.class public Lcom/raizlabs/android/dbflow/config/FlowManager;
.super Ljava/lang/Object;
.source "FlowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;,
        Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;
    }
.end annotation


# static fields
.field static a:Lcom/raizlabs/android/dbflow/config/e;

.field private static b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

.field private static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;-><init>(Lcom/raizlabs/android/dbflow/config/FlowManager$1;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->c:Ljava/util/HashSet;

    .line 62
    const-class v0, Lcom/raizlabs/android/dbflow/config/FlowManager;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->d:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GeneratedDatabaseHolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/raizlabs/android/dbflow/config/e;
    .locals 2

    .line 207
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->a:Lcom/raizlabs/android/dbflow/config/e;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configuration is not initialized. Please call init(FlowConfig) in your application class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->a:Lcom/raizlabs/android/dbflow/config/e;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->j(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->k(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "ModelAdapter/ModelViewAdapter"

    .line 86
    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/e;->getTableName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 288
    new-instance v0, Lcom/raizlabs/android/dbflow/config/e$a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e$a;->a()Lcom/raizlabs/android/dbflow/config/e;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Lcom/raizlabs/android/dbflow/config/e;)V

    return-void
.end method

.method public static a(Lcom/raizlabs/android/dbflow/config/e;)V
    .locals 2
    .param p0    # Lcom/raizlabs/android/dbflow/config/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    sput-object p0, Lcom/raizlabs/android/dbflow/config/FlowManager;->a:Lcom/raizlabs/android/dbflow/config/e;

    .line 302
    :try_start_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->e(Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v1, "Could not find the default GeneratedDatabaseHolder"

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 308
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->a(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/e;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/e;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 316
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->e(Ljava/lang/Class;)V

    goto :goto_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/e;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 321
    sget-object p0, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getDatabaseDefinitions()Ljava/util/List;

    move-result-object p0

    .line 322
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/b;

    .line 324
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/b;->f()Lcom/raizlabs/android/dbflow/structure/b/i;

    goto :goto_2

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Ensure the class is annotated with proper annotation."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Landroid/content/Context;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 274
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->a:Lcom/raizlabs/android/dbflow/config/e;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must provide a valid FlowConfig instance. We recommend calling init() in your application class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->a:Lcom/raizlabs/android/dbflow/config/e;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/e;->c()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/b;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()V

    .line 139
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not registered with a Database. Did you forget an annotation?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/b;"
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()V

    .line 150
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a registered Database. Did you forget the @Database annotation?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/InvalidDBConfiguration;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private static c()V
    .locals 2

    .line 506
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The global database holder is not initialized. Ensure you call FlowManager.init() before accessing the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b/i;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/structure/b/i;"
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->f()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object p0

    return-object p0
.end method

.method protected static e(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/raizlabs/android/dbflow/config/c;",
            ">;)V"
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/config/c;

    if-eqz v0, :cond_1

    .line 227
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->add(Lcom/raizlabs/android/dbflow/config/c;)V

    .line 230
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 233
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 234
    new-instance v1, Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/raizlabs/android/dbflow/config/FlowManager$ModuleNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static f(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/a/h;"
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c()V

    .line 336
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 366
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->j(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->k(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->l(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/g;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "InstanceAdapter"

    .line 375
    invoke-static {v1, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    return-object v0
.end method

.method public static h(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TTModel;>;"
        }
    .end annotation

    .line 414
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->j(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "ModelAdapter"

    .line 416
    invoke-static {v1, p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method

.method public static i(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/d/e;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/d/e;"
        }
    .end annotation

    .line 459
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/config/b;->g()Lcom/raizlabs/android/dbflow/d/e;

    move-result-object p0

    return-object p0
.end method

.method private static j(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/e<",
            "TT;>;"
        }
    .end annotation

    .line 469
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/b;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/e;

    move-result-object p0

    return-object p0
.end method

.method private static k(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TT;>;"
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/b;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/structure/g<",
            "TT;>;"
        }
    .end annotation

    .line 479
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->b(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/config/b;->c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/g;

    move-result-object p0

    return-object p0
.end method
