.class public Lcom/raizlabs/android/dbflow/sql/language/l;
.super Ljava/lang/Object;
.source "NameAlias.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/l$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/l$a;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->b(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->b(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Ljava/lang/String;

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->c(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->d:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->d(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->e(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Ljava/lang/String;

    goto :goto_1

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->e(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Ljava/lang/String;

    .line 85
    :goto_1
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->f(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->f(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/lang/String;

    .line 90
    :goto_2
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->e:Z

    .line 91
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->d(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->f:Z

    .line 92
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->g(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->g:Z

    .line 93
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->h(Lcom/raizlabs/android/dbflow/sql/language/l$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/l$a;Lcom/raizlabs/android/dbflow/sql/language/l$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/l;-><init>(Lcom/raizlabs/android/dbflow/sql/language/l$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/l$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 44
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/l$a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/l$a;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 45
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->a(Z)Lcom/raizlabs/android/dbflow/sql/language/l$a;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/l$a;->b(Z)Lcom/raizlabs/android/dbflow/sql/language/l$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Ljava/lang/String;

    .line 101
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Ljava/lang/String;

    .line 116
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->e()Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
