.class public Lanet/channel/request/d;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/request/d$a;,
        Lanet/channel/request/d$b;
    }
.end annotation


# instance fields
.field public final a:Lanet/channel/statist/RequestStatistic;

.field private b:Lanet/channel/h/k;

.field private c:Lanet/channel/h/k;

.field private d:Lanet/channel/h/k;

.field private e:Ljava/net/URL;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lanet/channel/request/BodyEntry;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljavax/net/ssl/HostnameVerifier;

.field private r:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>(Lanet/channel/request/d$a;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 55
    iput-object v0, p0, Lanet/channel/request/d;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lanet/channel/request/d;->k:Z

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lanet/channel/request/d;->n:I

    const/16 v0, 0x2710

    .line 65
    iput v0, p0, Lanet/channel/request/d;->o:I

    .line 66
    iput v0, p0, Lanet/channel/request/d;->p:I

    .line 72
    invoke-static {p1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->f:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lanet/channel/request/d$a;->b(Lanet/channel/request/d$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->g:Ljava/util/Map;

    .line 74
    invoke-static {p1}, Lanet/channel/request/d$a;->c(Lanet/channel/request/d$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->h:Ljava/util/Map;

    .line 75
    invoke-static {p1}, Lanet/channel/request/d$a;->d(Lanet/channel/request/d$a;)Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    .line 76
    invoke-static {p1}, Lanet/channel/request/d$a;->e(Lanet/channel/request/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->i:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lanet/channel/request/d$a;->f(Lanet/channel/request/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/request/d;->k:Z

    .line 78
    invoke-static {p1}, Lanet/channel/request/d$a;->g(Lanet/channel/request/d$a;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/d;->n:I

    .line 79
    invoke-static {p1}, Lanet/channel/request/d$a;->h(Lanet/channel/request/d$a;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 80
    invoke-static {p1}, Lanet/channel/request/d$a;->i(Lanet/channel/request/d$a;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->r:Ljavax/net/ssl/SSLSocketFactory;

    .line 81
    invoke-static {p1}, Lanet/channel/request/d$a;->j(Lanet/channel/request/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->l:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lanet/channel/request/d$a;->k(Lanet/channel/request/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->m:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lanet/channel/request/d$a;->l(Lanet/channel/request/d$a;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/d;->o:I

    .line 84
    invoke-static {p1}, Lanet/channel/request/d$a;->m(Lanet/channel/request/d$a;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/d;->p:I

    .line 85
    invoke-static {p1}, Lanet/channel/request/d$a;->n(Lanet/channel/request/d$a;)Lanet/channel/h/k;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->b:Lanet/channel/h/k;

    .line 86
    invoke-static {p1}, Lanet/channel/request/d$a;->o(Lanet/channel/request/d$a;)Lanet/channel/h/k;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    .line 87
    iget-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lanet/channel/request/d;->r()V

    .line 90
    :cond_0
    invoke-static {p1}, Lanet/channel/request/d$a;->p(Lanet/channel/request/d$a;)Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lanet/channel/request/d$a;->p(Lanet/channel/request/d$a;)Lanet/channel/statist/RequestStatistic;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p0}, Lanet/channel/request/d;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/request/d;->l:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/request/d$a;Lanet/channel/request/d$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lanet/channel/request/d;-><init>(Lanet/channel/request/d$a;)V

    return-void
.end method

.method private r()V
    .locals 5

    .line 227
    iget-object v0, p0, Lanet/channel/request/d;->h:Ljava/util/Map;

    invoke-virtual {p0}, Lanet/channel/request/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/strategy/utils/d;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 229
    iget-object v1, p0, Lanet/channel/request/d;->f:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/request/d$b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    :try_start_0
    new-instance v1, Lanet/channel/request/ByteArrayEntry;

    invoke-virtual {p0}, Lanet/channel/request/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    iput-object v1, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    .line 245
    iget-object v0, p0, Lanet/channel/request/d;->g:Ljava/util/Map;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/request/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 230
    :cond_1
    :goto_0
    iget-object v1, p0, Lanet/channel/request/d;->b:Lanet/channel/h/k;

    invoke-virtual {v1}, Lanet/channel/h/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/16 v1, 0x3f

    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x26

    if-eq v1, v3, :cond_3

    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/h/k;->a(Ljava/lang/String;)Lanet/channel/h/k;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 240
    iput-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    .line 250
    :catch_0
    :cond_4
    :goto_2
    iget-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    if-nez v0, :cond_5

    .line 251
    iget-object v0, p0, Lanet/channel/request/d;->b:Lanet/channel/h/k;

    iput-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    invoke-interface {v0, p1}, Lanet/channel/request/BodyEntry;->a(Ljava/io/OutputStream;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()Lanet/channel/request/d$a;
    .locals 2

    .line 94
    new-instance v0, Lanet/channel/request/d$a;

    invoke-direct {v0}, Lanet/channel/request/d$a;-><init>()V

    .line 95
    iget-object v1, p0, Lanet/channel/request/d;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lanet/channel/request/d;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Ljava/util/Map;)Ljava/util/Map;

    .line 97
    iget-object v1, p0, Lanet/channel/request/d;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->b(Lanet/channel/request/d$a;Ljava/util/Map;)Ljava/util/Map;

    .line 98
    iget-object v1, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;

    .line 99
    iget-object v1, p0, Lanet/channel/request/d;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->b(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-boolean v1, p0, Lanet/channel/request/d;->k:Z

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Z)Z

    .line 101
    iget v1, p0, Lanet/channel/request/d;->n:I

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;I)I

    .line 102
    iget-object v1, p0, Lanet/channel/request/d;->q:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;

    .line 103
    iget-object v1, p0, Lanet/channel/request/d;->r:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;

    .line 104
    iget-object v1, p0, Lanet/channel/request/d;->b:Lanet/channel/h/k;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Lanet/channel/h/k;)Lanet/channel/h/k;

    .line 105
    iget-object v1, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->b(Lanet/channel/request/d$a;Lanet/channel/h/k;)Lanet/channel/h/k;

    .line 106
    iget-object v1, p0, Lanet/channel/request/d;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->c(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lanet/channel/request/d;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->d(Lanet/channel/request/d$a;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget v1, p0, Lanet/channel/request/d;->o:I

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->b(Lanet/channel/request/d$a;I)I

    .line 109
    iget v1, p0, Lanet/channel/request/d;->p:I

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->c(Lanet/channel/request/d$a;I)I

    .line 110
    iget-object v1, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {v0, v1}, Lanet/channel/request/d$a;->a(Lanet/channel/request/d$a;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 134
    iget-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lanet/channel/h/k;

    iget-object v1, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    invoke-direct {v0, v1}, Lanet/channel/h/k;-><init>(Lanet/channel/h/k;)V

    iput-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    .line 137
    :cond_0
    iget-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    invoke-virtual {v0, p1, p2}, Lanet/channel/h/k;->a(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lanet/channel/request/d;->a:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0, p1, p2}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lanet/channel/request/d;->e:Ljava/net/URL;

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lanet/channel/h/k;

    iget-object v1, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    invoke-direct {v0, v1}, Lanet/channel/h/k;-><init>(Lanet/channel/h/k;)V

    iput-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    .line 150
    :cond_0
    iget-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    if-eqz p1, :cond_1

    const-string p1, "https"

    goto :goto_0

    :cond_1
    const-string p1, "http"

    :goto_0
    invoke-virtual {v0, p1}, Lanet/channel/h/k;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lanet/channel/request/d;->e:Ljava/net/URL;

    return-void
.end method

.method public b()Lanet/channel/h/k;
    .locals 1

    .line 115
    iget-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    invoke-virtual {v0}, Lanet/channel/h/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/net/URL;
    .locals 1

    .line 123
    iget-object v0, p0, Lanet/channel/request/d;->e:Ljava/net/URL;

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/d;->d:Lanet/channel/h/k;

    :goto_0
    invoke-virtual {v0}, Lanet/channel/h/k;->e()Ljava/net/URL;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lanet/channel/request/d;->e:Ljava/net/URL;

    .line 126
    :cond_1
    iget-object v0, p0, Lanet/channel/request/d;->e:Ljava/net/URL;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 155
    iget v0, p0, Lanet/channel/request/d;->n:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lanet/channel/request/d;->c:Lanet/channel/h/k;

    invoke-virtual {v0}, Lanet/channel/h/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lanet/channel/request/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lanet/channel/request/d;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lanet/channel/request/d;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/d;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    :goto_0
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lanet/channel/request/d;->k:Z

    return v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 179
    iget-object v0, p0, Lanet/channel/request/d;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 183
    iget-object v0, p0, Lanet/channel/request/d;->r:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public m()[B
    .locals 2

    .line 195
    iget-object v0, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 198
    :try_start_0
    invoke-virtual {p0, v0}, Lanet/channel/request/d;->a(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lanet/channel/request/d;->j:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lanet/channel/request/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 219
    iget v0, p0, Lanet/channel/request/d;->p:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 223
    iget v0, p0, Lanet/channel/request/d;->o:I

    return v0
.end method
