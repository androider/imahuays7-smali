.class public Lorg/fourthline/cling/support/messagebox/model/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Lorg/fourthline/cling/support/messagebox/model/ElementAppender;


# instance fields
.field private final date:Ljava/lang/String;

.field private final time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-static {}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/support/messagebox/model/DateTime;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/support/messagebox/model/DateTime;->date:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/fourthline/cling/support/messagebox/model/DateTime;->time:Ljava/lang/String;

    return-void
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V
    .locals 2

    const-string v0, "Date"

    .line 49
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    const-string v0, "Time"

    .line 50
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/DateTime;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/DateTime;->time:Ljava/lang/String;

    return-object v0
.end method
