.class final synthetic Lcom/mh/movie/core/mvp/presenter/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/e$c;


# static fields
.field static final a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/aa;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/presenter/aa;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/presenter/aa;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0

    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/BaseModel;

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/structure/BaseModel;->save(Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    return-void
.end method
