.class public Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;
.super Lorg/fourthline/cling/support/messagebox/model/Message;
.source "MessageScheduleReminder.java"


# instance fields
.field private final body:Ljava/lang/String;

.field private final endTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

.field private final location:Ljava/lang/String;

.field private final owner:Lorg/fourthline/cling/support/messagebox/model/NumberName;

.field private final startTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

.field private final subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;Lorg/fourthline/cling/support/messagebox/model/DateTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 34
    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;-><init>(Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;Lorg/fourthline/cling/support/messagebox/model/DateTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;Lorg/fourthline/cling/support/messagebox/model/DateTime;Lorg/fourthline/cling/support/messagebox/model/NumberName;Ljava/lang/String;Lorg/fourthline/cling/support/messagebox/model/DateTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    sget-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$Category;->SCHEDULE_REMINDER:Lorg/fourthline/cling/support/messagebox/model/Message$Category;

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/support/messagebox/model/Message;-><init>(Lorg/fourthline/cling/support/messagebox/model/Message$Category;Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;)V

    .line 40
    iput-object p2, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->startTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    .line 41
    iput-object p3, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->owner:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    .line 42
    iput-object p4, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->subject:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->endTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    .line 44
    iput-object p6, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->location:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->getStartTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;

    move-result-object v0

    const-string v1, "StartTime"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    .line 74
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->getOwner()Lorg/fourthline/cling/support/messagebox/model/NumberName;

    move-result-object v0

    const-string v1, "Owner"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/NumberName;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    const-string v0, "Subject"

    .line 75
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->getEndTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;

    move-result-object v0

    const-string v1, "EndTime"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/model/DateTime;->appendMessageElements(Lorg/fourthline/cling/support/messagebox/parser/MessageElement;)V

    const-string v0, "Location"

    .line 77
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    const-string v0, "Body"

    .line 78
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->createChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->endTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lorg/fourthline/cling/support/messagebox/model/NumberName;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->owner:Lorg/fourthline/cling/support/messagebox/model/NumberName;

    return-object v0
.end method

.method public getStartTime()Lorg/fourthline/cling/support/messagebox/model/DateTime;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->startTime:Lorg/fourthline/cling/support/messagebox/model/DateTime;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/support/messagebox/model/MessageScheduleReminder;->subject:Ljava/lang/String;

    return-object v0
.end method
