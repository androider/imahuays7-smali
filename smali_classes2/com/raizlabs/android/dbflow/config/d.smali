.class public final Lcom/raizlabs/android/dbflow/config/d;
.super Lcom/raizlabs/android/dbflow/config/b;
.source "DbDatabaseDbDatabase_Database.java"


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/b;-><init>()V

    .line 19
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/config/d;->a(Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 20
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;

    invoke-direct {v0, p1, p0}, Lcom/mh/movie/core/mvp/model/db/RandomBarrageTable_Table;-><init>(Lcom/raizlabs/android/dbflow/config/c;Lcom/raizlabs/android/dbflow/config/b;)V

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/config/d;->a(Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 21
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/config/d;->a(Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 22
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;-><init>(Lcom/raizlabs/android/dbflow/config/b;)V

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/config/d;->a(Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 23
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;

    invoke-direct {v0, p1, p0}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;-><init>(Lcom/raizlabs/android/dbflow/config/c;Lcom/raizlabs/android/dbflow/config/b;)V

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/config/d;->a(Lcom/raizlabs/android/dbflow/structure/e;Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "mh_android"

    return-object v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/mh/movie/core/mvp/model/db/DbDatabase;

    return-object v0
.end method
