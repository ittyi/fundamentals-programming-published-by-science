let jikyu = 850 ;;
let baito_kyuyu years mouth = (jikyu + 100 * years) * mouth ;;

let baito_kyuyu_z year month = 
  month * (jikyu + year * 100) ;;

baito_kyuyu_z 2 100 ;;
baito_kyuyu 2 100 ;;
