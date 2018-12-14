.class public abstract Lcom/raizlabs/android/dbflow/config/c;
.super Ljava/lang/Object;
.source "DatabaseHolder.java"


# instance fields
.field protected final databaseClassLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ">;"
        }
    .end annotation
.end field

.field protected final databaseDefinitionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ">;"
        }
    .end annotation
.end field

.field protected final databaseNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ">;"
        }
    .end annotation
.end field

.field protected final typeConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/a/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseDefinitionMap:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseNameMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseClassLookupMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->typeConverters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/b;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseClassLookupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/b;

    return-object p1
.end method

.method public getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/b;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/b;

    return-object p1
.end method

.method public getDatabaseDefinitions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/config/b;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseDefinitionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/config/b;

    return-object p1
.end method

.method public getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/a/h;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->typeConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/a/h;

    return-object p1
.end method

.method public putDatabaseForTable(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/config/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/config/b;",
            ")V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseDefinitionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseNameMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/config/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseClassLookupMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/config/b;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseDefinitionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->databaseClassLookupMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/c;->typeConverters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
