.class public Lcom/raizlabs/android/dbflow/sql/c;
.super Ljava/lang/Object;
.source "QueryBuilder.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<QueryClass:",
        "Lcom/raizlabs/android/dbflow/sql/c;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field protected a:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "`.*`"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/c;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c;->a:Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 322
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 324
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "."

    const-string v3, "`.`"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 254
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 268
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 279
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "`"

    const-string v1, ""

    .line 280
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/c;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TQueryClass;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 157
    :cond_0
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c;->c()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)TQueryClass;"
        }
    .end annotation

    const-string v0, ", "

    .line 142
    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/sql/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/raizlabs/android/dbflow/sql/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQueryClass;"
        }
    .end annotation

    const-string v0, " "

    .line 43
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/c;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TQueryClass;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c;->c()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lcom/raizlabs/android/dbflow/sql/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQueryClass;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
