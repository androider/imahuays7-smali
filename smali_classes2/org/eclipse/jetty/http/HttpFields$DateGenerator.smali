.class Lorg/eclipse/jetty/http/HttpFields$DateGenerator;
.super Ljava/lang/Object;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateGenerator"
.end annotation


# instance fields
.field private final buf:Ljava/lang/StringBuilder;

.field private final gc:Ljava/util/GregorianCalendar;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    .line 94
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/http/HttpFields$1;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public formatCookieDate(Ljava/lang/StringBuilder;J)V
    .locals 6

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 146
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 147
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 148
    rem-int/lit16 v3, v3, 0x2710

    const-wide/16 v4, 0x3e8

    .line 150
    div-long/2addr p2, v4

    const-wide/32 v4, 0x15180

    rem-long/2addr p2, v4

    long-to-int p2, p2

    .line 151
    rem-int/lit8 p3, p2, 0x3c

    .line 152
    div-int/lit8 p2, p2, 0x3c

    .line 153
    rem-int/lit8 v4, p2, 0x3c

    .line 154
    div-int/lit8 p2, p2, 0x3c

    .line 156
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$000()[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$100()[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    div-int/lit8 v1, v3, 0x64

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 165
    rem-int/lit8 v3, v3, 0x64

    invoke-static {p1, v3}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {p1, p2}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    const/16 p2, 0x3a

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {p1, v4}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1, p3}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    const-string p2, " GMT"

    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public formatDate(J)Ljava/lang/String;
    .locals 8

    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 104
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    .line 105
    iget-object p2, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p2

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 107
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 108
    div-int/lit8 v2, v1, 0x64

    .line 109
    rem-int/lit8 v1, v1, 0x64

    .line 111
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 112
    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 113
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->gc:Ljava/util/GregorianCalendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 115
    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$000()[Ljava/lang/String;

    move-result-object v7

    aget-object p1, v7, p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 120
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$100()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 124
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 126
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 128
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1, v4}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 130
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1, v5}, Lorg/eclipse/jetty/util/StringUtil;->append2digits(Ljava/lang/StringBuilder;I)V

    .line 132
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    const-string p2, " GMT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
