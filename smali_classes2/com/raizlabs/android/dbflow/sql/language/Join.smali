.class public Lcom/raizlabs/android/dbflow/sql/language/Join;
.super Ljava/lang/Object;
.source "Join.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        "TFromModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field private b:Lcom/raizlabs/android/dbflow/sql/language/l;

.field private c:Lcom/raizlabs/android/dbflow/sql/language/n;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 152
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->a:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "JOIN"

    .line 156
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->b:Lcom/raizlabs/android/dbflow/sql/language/l;

    .line 158
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    .line 162
    sget-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->a:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->c:Lcom/raizlabs/android/dbflow/sql/language/n;

    if-eqz v1, :cond_0

    const-string v1, "ON"

    .line 164
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->c:Lcom/raizlabs/android/dbflow/sql/language/n;

    .line 166
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USING ("

    .line 169
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->d:Ljava/util/List;

    .line 170
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    const-string v2, ")"

    .line 171
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
