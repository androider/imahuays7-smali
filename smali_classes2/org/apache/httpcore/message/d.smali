.class public Lorg/apache/httpcore/message/d;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lorg/apache/httpcore/message/l;


# static fields
.field public static final a:Lorg/apache/httpcore/message/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lorg/apache/httpcore/message/d;

.field private static final c:Ljava/util/BitSet;

.field private static final d:Ljava/util/BitSet;


# instance fields
.field private final e:Lorg/apache/httpcore/message/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/httpcore/message/d;

    invoke-direct {v0}, Lorg/apache/httpcore/message/d;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/d;->a:Lorg/apache/httpcore/message/d;

    .line 63
    new-instance v0, Lorg/apache/httpcore/message/d;

    invoke-direct {v0}, Lorg/apache/httpcore/message/d;-><init>()V

    sput-object v0, Lorg/apache/httpcore/message/d;->b:Lorg/apache/httpcore/message/d;

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/apache/httpcore/message/p;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/message/d;->c:Ljava/util/BitSet;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/apache/httpcore/message/p;->a([I)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lorg/apache/httpcore/message/d;->d:Ljava/util/BitSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d
        0x3b
        0x2c
    .end array-data

    :array_1
    .array-data 4
        0x3b
        0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lorg/apache/httpcore/message/p;->a:Lorg/apache/httpcore/message/p;

    iput-object v0, p0, Lorg/apache/httpcore/message/d;->e:Lorg/apache/httpcore/message/p;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/apache/httpcore/message/l;)[Lorg/apache/httpcore/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/httpcore/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 91
    invoke-static {p0, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lorg/apache/httpcore/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    .line 94
    invoke-virtual {v0, p0}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lorg/apache/httpcore/message/o;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lorg/apache/httpcore/message/o;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget-object p1, Lorg/apache/httpcore/message/d;->b:Lorg/apache/httpcore/message/d;

    .line 97
    :goto_0
    invoke-interface {p1, v0, v1}, Lorg/apache/httpcore/message/l;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)[Lorg/apache/httpcore/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/httpcore/u;)Lorg/apache/httpcore/f;
    .locals 1

    .line 167
    new-instance v0, Lorg/apache/httpcore/message/b;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/httpcore/message/b;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/httpcore/u;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/httpcore/u;
    .locals 1

    .line 300
    new-instance v0, Lorg/apache/httpcore/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/httpcore/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)[Lorg/apache/httpcore/f;
    .locals 3

    const-string v0, "Char array buffer"

    .line 105
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 106
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/d;->b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/f;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Lorg/apache/httpcore/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lorg/apache/httpcore/f;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/httpcore/f;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/httpcore/f;

    return-object p1
.end method

.method public b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/f;
    .locals 3

    const-string v0, "Char array buffer"

    .line 143
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 144
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/d;->d(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/u;

    move-result-object v0

    .line 147
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/d;->c(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)[Lorg/apache/httpcore/u;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 153
    :goto_0
    invoke-interface {v0}, Lorg/apache/httpcore/u;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lorg/apache/httpcore/u;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/httpcore/message/d;->a(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/httpcore/u;)Lorg/apache/httpcore/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)[Lorg/apache/httpcore/u;
    .locals 3

    const-string v0, "Char array buffer"

    .line 197
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 198
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lorg/apache/httpcore/message/d;->e:Lorg/apache/httpcore/message/p;

    invoke-virtual {v0, p1, p2}, Lorg/apache/httpcore/message/p;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    :cond_0
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p0, p1, p2}, Lorg/apache/httpcore/message/d;->d(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/u;

    move-result-object v1

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 209
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/httpcore/u;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/httpcore/u;

    return-object p1
.end method

.method public d(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;)Lorg/apache/httpcore/u;
    .locals 4

    const-string v0, "Char array buffer"

    .line 237
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 238
    invoke-static {p2, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lorg/apache/httpcore/message/d;->e:Lorg/apache/httpcore/message/p;

    sget-object v1, Lorg/apache/httpcore/message/d;->c:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/httpcore/message/p;->a(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 242
    new-instance p1, Lorg/apache/httpcore/message/BasicNameValuePair;

    invoke-direct {p1, v0, v2}, Lorg/apache/httpcore/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 244
    :cond_0
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 245
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Lorg/apache/httpcore/message/o;->a(I)V

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_1

    .line 247
    invoke-virtual {p0, v0, v2}, Lorg/apache/httpcore/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/httpcore/u;

    move-result-object p1

    return-object p1

    .line 249
    :cond_1
    iget-object v1, p0, Lorg/apache/httpcore/message/d;->e:Lorg/apache/httpcore/message/p;

    sget-object v2, Lorg/apache/httpcore/message/d;->d:Ljava/util/BitSet;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/httpcore/message/p;->b(Lorg/apache/httpcore/util/CharArrayBuffer;Lorg/apache/httpcore/message/o;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    invoke-virtual {p2}, Lorg/apache/httpcore/message/o;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/apache/httpcore/message/o;->a(I)V

    .line 253
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/apache/httpcore/message/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/httpcore/u;

    move-result-object p1

    return-object p1
.end method
