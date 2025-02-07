class VerbSyntax {
  static const from = r'^from:(?<atSign>@?[^@\s]+$)';
  static const pol = r'^pol$';
  static const cram = r'^cram:(?<digest>.+$)';
  static const pkam = r'^pkam:(?<signature>.+$)';
  static const llookup =
      r'^llookup:((?<operation>meta|all):)?(?:cached:)?((?:public:)|(@(?<forAtSign>[^@:\s]*):))?(?<atKey>[^:]((?!:{2})[^@])+)@(?<atSign>[^@\s]+)$';
  static const plookup =
      r'^plookup:(bypassCache:(?<bypassCache>true|false):)?((?<operation>meta|all):)?(?<atKey>[^@\s]+)@(?<atSign>[^@\s]+)$';
  static const lookup =
      r'^lookup:(bypassCache:(?<bypassCache>true|false):)?((?<operation>meta|all):)?(?<atKey>(?:[^:]).+)@(?<atSign>[^@\s]+)$';
  static const scan =
      r'^scan$|scan(:(?<forAtSign>@[^:@\s]+))?(:page:(?<page>\d+))?( (?<regex>\S+))?$';
  static const config =
      r'^config:block:(?<operation>add|remove|show)(?:(?<=show)\s?$|(?:(?<=add|remove):(?<atSign>(?:@[^\s@]+)( (?:@[^\s@]+))*$)))';
  static const stats =
      r'^stats(?<statId>:((?!0)\d+)?(,(\d+))*)?(:(?<regex>(?<=:3:).+))?$';
  static const sync = r'^sync:(?<from_commit_seq>[0-9]+|-1)(:(?<regex>.+))?$';
  static const syncFrom =
      r'^sync:from:(?<from_commit_seq>[0-9]+|-1)(:limit:(?<limit>\d+))(:(?<regex>.+))?$';
  static const update =
      r'^update:json:(?<json>.+)$|^update:(?:ttl:(?<ttl>\d+):)?(?:ttb:(?<ttb>\d+):)?(?:ttr:(?<ttr>(-?)\d+):)?(ccd:(?<ccd>true|false):)?(?:dataSignature:(?<dataSignature>[^:@]+):)?(?:sharedKeyStatus:(?<sharedKeyStatus>[^:@]+):)?(isBinary:(?<isBinary>true|false):)?(isEncrypted:(?<isEncrypted>true|false):)?(sharedKeyEnc:(?<sharedKeyEnc>[^:@]+):)?(pubKeyCS:(?<pubKeyCS>[^:@]+):)?(priority:(?<priority>low|medium|high):)?((?:public:)|(@(?<forAtSign>[^@:\s]*):))?(?<atKey>[^:@]((?!:{2})[^@])+)(?:@(?<atSign>[^@\s]*))? (?<value>.+$)';
  // ignore: constant_identifier_names
  static const update_meta =
      r'^update:meta:((?:public:)|((?<forAtSign>@?[^@\s]*):))?(?<atKey>((?!:{2})[^@])+)@(?<atSign>[^@:\s]*)(:ttl:(?<ttl>\d+))?(:ttb:(?<ttb>\d+))?(:ttr:(?<ttr>\d+))?(:ccd:(?<ccd>true|false))?(?:sharedKeyStatus:(?<sharedKeyStatus>[^:@]+):)?(:isBinary:(?<isBinary>true|false))?(:isEncrypted:(?<isEncrypted>true|false))?(sharedKeyEnc:(?<sharedKeyEnc>[^:@]+):)?(pubKeyCS:(?<pubKeyCS>[^:@]+))?$';
  static const delete =
      r'^delete:(priority:(?<priority>low|medium|high):)?(?:cached:)?((?:public:)|(@(?<forAtSign>[^@:\s]*):))?(?<atKey>[^:]((?!:{2})[^@])+)(@(?<atSign>[^@\s]+))?$';
  static const monitor = r'^monitor(:(?<epochMillis>\d+))?( (?<regex>.+))?$';
  static const stream =
      r'^stream:((?<operation>init|send|receive|done|resume))?((@(?<receiver>[^@:\s]+)))?( ?namespace:(?<namespace>[\w-]+))?( ?startByte:(?<startByte>\d+))?( (?<streamId>[\w-]*))?( (?<fileName>.* ))?((?<length>\d*))?$';
  static const notify =
      r'^notify:(id:(?<id>[\w\d\-\_]+):)?((?<operation>update|delete):)?(messageType:(?<messageType>key|text):)?(priority:(?<priority>low|medium|high):)?(strategy:(?<strategy>all|latest):)?(latestN:(?<latestN>\d+):)?(notifier:(?<notifier>[^\s:]+):)?(ttln:(?<ttln>\d+):)?(ttl:(?<ttl>\d+):)?(ttb:(?<ttb>\d+):)?(ttr:(?<ttr>(-)?\d+):)?(ccd:(?<ccd>true|false):)?(sharedKeyEnc:(?<sharedKeyEnc>[^:@]+):)?(pubKeyCS:(?<pubKeyCS>[^:@]+):)?(@(?<forAtSign>[^@:\s]*)):(?<atKey>[^:@]((?!:{2})[^@])+)(@(?<atSign>[^@:\s]+))?(:(?<value>.+))?$';
  static const notifyList =
      r'^notify:list(:(?<fromDate>\d{4}-[01]?\d?-[0123]?\d?))?(:(?<toDate>\d{4}-[01]?\d?-[0123]?\d?))?(:(?<regex>[^:]+))?';
  static const notifyStatus = r'^notify:status:(?<notificationId>\S+)$';
  static const notifyAll =
      r'^notify:all:((?<operation>update|delete):)?(messageType:((?<messageType>key|text):))?(?:ttl:(?<ttl>\d+):)?(?:ttb:(?<ttb>\d+):)?(?:ttr:(?<ttr>-?\d+):)?(?:ccd:(?<ccd>true|false+):)?(?<forAtSign>(([^:\s])+)?(,([^:\s]+))*)(:(?<atKey>[^@:\s]+))(@(?<atSign>[^@:\s]+))?(:(?<value>.+))?$';
  static const batch = r'^batch:(?<json>.+)$';
  static const info = r'^info(:brief)?$';
  static const noOp = r'^noop:(?<delayMillis>\d+)$';
  static const notifyRemove = r'notify:remove:(?<id>[\w\d\-\_]+)';
}
