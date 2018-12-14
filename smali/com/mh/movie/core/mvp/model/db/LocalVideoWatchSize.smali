.class public Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "LocalVideoWatchSize.java"


# instance fields
.field public id:Ljava/lang/String;

.field public quility:Ljava/lang/String;

.field public videoId:J

.field public videoInfoId:J

.field public watchSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method

.method public static deleteData(Ljava/lang/String;)J
    .locals 3

    .line 56
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/g;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/g;-><init>()V

    const-class v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/g;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v2, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize_Table;->id:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    invoke-virtual {v2, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadData(Z)V
    .locals 2

    .line 31
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/h;->g()Lcom/raizlabs/android/dbflow/sql/b/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$2;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/b/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/f$c;)Lcom/raizlabs/android/dbflow/sql/b/a;

    move-result-object p0

    new-instance v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$1;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$1;-><init>()V

    .line 36
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/b/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/sql/b/a;

    .line 41
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/b/a;->b()V

    return-void
.end method

.method public static updataWatchSizeDB(JJI)Z
    .locals 3

    .line 46
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;-><init>()V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    .line 48
    iput-wide p0, v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoInfoId:J

    .line 49
    iput-wide p2, v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->videoId:J

    .line 50
    iput p4, v0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->watchSize:I

    .line 52
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->async()Lcom/raizlabs/android/dbflow/structure/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->save()Z

    move-result p0

    return p0
.end method
