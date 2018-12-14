.class public Lcom/raizlabs/android/dbflow/sql/language/l$a;
.super Ljava/lang/Object;
.source "NameAlias.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->d:Z

    .line 228
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->e:Z

    .line 229
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->f:Z

    .line 230
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->g:Z

    .line 234
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->e:Z

    return p0
.end method

.method static synthetic e(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->g:Z

    return p0
.end method


# virtual methods
.method public a(Z)Lcom/raizlabs/android/dbflow/sql/language/l$a;
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->d:Z

    return-object p0
.end method

.method public a()Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 2

    .line 304
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/l;-><init>(Lcom/raizlabs/android/dbflow/sql/language/l$a;Lcom/raizlabs/android/dbflow/sql/language/l$1;)V

    return-object v0
.end method

.method public b(Z)Lcom/raizlabs/android/dbflow/sql/language/l$a;
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l$a;->f:Z

    return-object p0
.end method
