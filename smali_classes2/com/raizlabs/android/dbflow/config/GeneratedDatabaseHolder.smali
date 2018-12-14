.class public final Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;
.super Lcom/raizlabs/android/dbflow/config/c;
.source "GeneratedDatabaseHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/c;-><init>()V

    .line 24
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/c;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/e;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/a;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/b;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/sql/Date;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/g;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/sql/Time;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/g;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/sql/Timestamp;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/g;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/Calendar;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/d;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/GregorianCalendar;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/d;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/f;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/GeneratedDatabaseHolder;->typeConverters:Ljava/util/Map;

    const-class v1, Ljava/util/UUID;

    new-instance v2, Lcom/raizlabs/android/dbflow/a/i;

    invoke-direct {v2}, Lcom/raizlabs/android/dbflow/a/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/config/d;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/config/d;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method
