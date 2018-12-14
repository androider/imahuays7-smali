.class final Lcom/mh/movie/core/mvp/model/db/TestUser_Table$1;
.super Ljava/lang/Object;
.source "TestUser_Table.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/db/TestUser_Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeConverter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/a/h;"
        }
    .end annotation

    .line 38
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->g(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;

    .line 39
    invoke-static {p1}, Lcom/mh/movie/core/mvp/model/db/TestUser_Table;->access$000(Lcom/mh/movie/core/mvp/model/db/TestUser_Table;)Lcom/raizlabs/android/dbflow/a/i;

    move-result-object p1

    return-object p1
.end method
