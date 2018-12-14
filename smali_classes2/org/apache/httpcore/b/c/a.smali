.class public abstract Lorg/apache/httpcore/b/c/a;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lorg/apache/httpcore/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/httpcore/m;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/httpcore/c/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/apache/httpcore/message/n;

.field private final b:Lorg/apache/httpcore/c/g;

.field private final c:Lorg/apache/httpcore/a/b;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/httpcore/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lorg/apache/httpcore/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/httpcore/c/g;Lorg/apache/httpcore/message/n;Lorg/apache/httpcore/a/b;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Session input buffer"

    .line 111
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/c/g;

    iput-object p1, p0, Lorg/apache/httpcore/b/c/a;->b:Lorg/apache/httpcore/c/g;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget-object p2, Lorg/apache/httpcore/message/i;->b:Lorg/apache/httpcore/message/i;

    :goto_0
    iput-object p2, p0, Lorg/apache/httpcore/b/c/a;->a:Lorg/apache/httpcore/message/n;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    sget-object p3, Lorg/apache/httpcore/a/b;->a:Lorg/apache/httpcore/a/b;

    :goto_1
    iput-object p3, p0, Lorg/apache/httpcore/b/c/a;->c:Lorg/apache/httpcore/a/b;

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/httpcore/b/c/a;->d:Ljava/util/List;

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lorg/apache/httpcore/b/c/a;->e:I

    return-void
.end method

.method public static a(Lorg/apache/httpcore/c/g;IILorg/apache/httpcore/message/n;)[Lorg/apache/httpcore/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    sget-object p3, Lorg/apache/httpcore/message/i;->b:Lorg/apache/httpcore/message/i;

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/httpcore/b/c/a;->a(Lorg/apache/httpcore/c/g;IILorg/apache/httpcore/message/n;Ljava/util/List;)[Lorg/apache/httpcore/e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/apache/httpcore/c/g;IILorg/apache/httpcore/message/n;Ljava/util/List;)[Lorg/apache/httpcore/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/httpcore/c/g;",
            "II",
            "Lorg/apache/httpcore/message/n;",
            "Ljava/util/List<",
            "Lorg/apache/httpcore/util/CharArrayBuffer;",
            ">;)[",
            "Lorg/apache/httpcore/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Session input buffer"

    .line 178
    invoke-static {p0, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Line parser"

    .line 179
    invoke-static {p3, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Header line list"

    .line 180
    invoke-static {p4, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :cond_0
    if-nez v1, :cond_1

    .line 186
    new-instance v1, Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->clear()V

    .line 190
    :goto_0
    invoke-interface {p0, v1}, Lorg/apache/httpcore/c/g;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_8

    .line 191
    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    goto :goto_4

    .line 198
    :cond_2
    invoke-virtual {v1, v5}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    const/16 v6, 0x9

    const/16 v7, 0x20

    if-eq v3, v7, :cond_3

    invoke-virtual {v1, v5}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_7

    :cond_3
    if-eqz v2, :cond_7

    .line 202
    :goto_1
    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 203
    invoke-virtual {v1, v5}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-lez p2, :cond_6

    .line 210
    invoke-virtual {v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    if-le v3, p2, :cond_6

    .line 211
    new-instance p0, Lorg/apache/httpcore/MessageConstraintException;

    const-string p1, "Maximum line length limit exceeded"

    invoke-direct {p0, p1}, Lorg/apache/httpcore/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_6
    invoke-virtual {v2, v7}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(C)V

    .line 214
    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v1, v5, v3}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Lorg/apache/httpcore/util/CharArrayBuffer;II)V

    goto :goto_3

    .line 216
    :cond_7
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move-object v1, v0

    :goto_3
    if-lez p1, :cond_0

    .line 220
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 221
    new-instance p0, Lorg/apache/httpcore/MessageConstraintException;

    const-string p1, "Maximum header count exceeded"

    invoke-direct {p0, p1}, Lorg/apache/httpcore/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_8
    :goto_4
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/httpcore/e;

    .line 225
    :goto_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_9

    .line 226
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/httpcore/util/CharArrayBuffer;

    .line 228
    :try_start_0
    invoke-interface {p3, p1}, Lorg/apache/httpcore/message/n;->a(Lorg/apache/httpcore/util/CharArrayBuffer;)Lorg/apache/httpcore/e;

    move-result-object p1

    aput-object p1, p0, v5
    :try_end_0
    .catch Lorg/apache/httpcore/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catch_0
    move-exception p0

    .line 230
    new-instance p1, Lorg/apache/httpcore/ProtocolException;

    invoke-virtual {p0}, Lorg/apache/httpcore/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/httpcore/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-object p0
.end method


# virtual methods
.method public a()Lorg/apache/httpcore/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;
        }
    .end annotation

    .line 255
    iget v0, p0, Lorg/apache/httpcore/b/c/a;->e:I

    packed-switch v0, :pswitch_data_0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inconsistent parser state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/httpcore/b/c/a;->b:Lorg/apache/httpcore/c/g;

    invoke-virtual {p0, v0}, Lorg/apache/httpcore/b/c/a;->a(Lorg/apache/httpcore/c/g;)Lorg/apache/httpcore/m;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/httpcore/b/c/a;->f:Lorg/apache/httpcore/m;
    :try_end_0
    .catch Lorg/apache/httpcore/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 263
    iput v0, p0, Lorg/apache/httpcore/b/c/a;->e:I

    .line 266
    :pswitch_1
    iget-object v0, p0, Lorg/apache/httpcore/b/c/a;->b:Lorg/apache/httpcore/c/g;

    iget-object v1, p0, Lorg/apache/httpcore/b/c/a;->c:Lorg/apache/httpcore/a/b;

    .line 268
    invoke-virtual {v1}, Lorg/apache/httpcore/a/b;->b()I

    move-result v1

    iget-object v2, p0, Lorg/apache/httpcore/b/c/a;->c:Lorg/apache/httpcore/a/b;

    .line 269
    invoke-virtual {v2}, Lorg/apache/httpcore/a/b;->a()I

    move-result v2

    iget-object v3, p0, Lorg/apache/httpcore/b/c/a;->a:Lorg/apache/httpcore/message/n;

    iget-object v4, p0, Lorg/apache/httpcore/b/c/a;->d:Ljava/util/List;

    .line 266
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/httpcore/b/c/a;->a(Lorg/apache/httpcore/c/g;IILorg/apache/httpcore/message/n;Ljava/util/List;)[Lorg/apache/httpcore/e;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lorg/apache/httpcore/b/c/a;->f:Lorg/apache/httpcore/m;

    invoke-interface {v1, v0}, Lorg/apache/httpcore/m;->a([Lorg/apache/httpcore/e;)V

    .line 273
    iget-object v0, p0, Lorg/apache/httpcore/b/c/a;->f:Lorg/apache/httpcore/m;

    const/4 v1, 0x0

    .line 274
    iput-object v1, p0, Lorg/apache/httpcore/b/c/a;->f:Lorg/apache/httpcore/m;

    .line 275
    iget-object v1, p0, Lorg/apache/httpcore/b/c/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 276
    iput v1, p0, Lorg/apache/httpcore/b/c/a;->e:I

    return-object v0

    :catch_0
    move-exception v0

    .line 261
    new-instance v1, Lorg/apache/httpcore/ProtocolException;

    invoke-virtual {v0}, Lorg/apache/httpcore/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/httpcore/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract a(Lorg/apache/httpcore/c/g;)Lorg/apache/httpcore/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/httpcore/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/httpcore/HttpException;,
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation
.end method
