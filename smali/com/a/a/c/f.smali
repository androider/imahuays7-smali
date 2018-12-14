.class public Lcom/a/a/c/f;
.super Ljava/lang/Object;
.source "UTUtdidHelper2.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H"

    .line 9
    iput-object v0, p0, Lcom/a/a/c/f;->a:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/a/a/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/a/a/b;->b([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/a/a/c/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/a/a/c/f;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/a/a/a/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {p1, v0}, Lcom/a/a/a/a/b;->a(Ljava/lang/String;I)[B

    move-result-object p1

    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    :cond_0
    return-object v1
.end method
